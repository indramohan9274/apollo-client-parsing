import UIKit

class ViewController: UIViewController {
    
    let locations: [SearchLocation] = {
       var locations = [SearchLocation]()
        locations.append(SearchLocation(name: "Rome, Italy", regionId: "179899"))
        locations.append(SearchLocation(name: "Mountain View, California", regionId: "9030"))
        locations.append(SearchLocation(name: "New York", regionId: "178293"))
        locations.append(SearchLocation(name: "Las Vegas, Nevada", regionId: "178276"))
        return locations
    }()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var beginAtLabel: UILabel!
    @IBOutlet weak var receivedAtLabel: UILabel!
    @IBOutlet weak var parsedAtLabel: UILabel!
    @IBOutlet weak var networkTimeLabel: UILabel!
    @IBOutlet weak var parsingTimeLabel: UILabel!
    @IBOutlet weak var totalTimeLabel: UILabel!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var contentView: UIStackView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    lazy var parameters: SearchParameters = {
        let location = locations.randomElement()!
        return SearchParameters(location: location.name,
                                startDate: Date(timeIntervalSinceNow: 60*60*24*25),
                                endDate: Date(timeIntervalSinceNow: 60*60*24*35),
                                regionId: location.regionId)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeGraphQLRequest()
    }
    
    @IBAction func segmentControlValueChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
           makeGraphQLRequest()
        default:
            makeRESTAPIRequest();
        }
    }
    
    func makeGraphQLRequest() {
        beginLoading()
        let request = ActivitySearchServiceRequest(searchParameters: parameters)
        _ = request.execute {[weak self] response in
            switch response {
            case .success(let response, let latencyData):
                print("\(response.activities.count)")
                self?.endLoading(latencyData: latencyData, resultCount: response.activities.count)
            case .failure(_):
                self?.endLoading(latencyData: nil)
            }
        }
    }
    
    func makeRESTAPIRequest() {
        beginLoading()
        let request = ActivitiesSearchRequest(searchParameters: parameters)
        _ = request.execute { [weak self] (response) in
            switch response {
            case .success(let response, let latencyData):
                print("\(response.activities.count)")
                self?.endLoading(latencyData: latencyData, resultCount: response.activities.count)
            case .failure(_):
                self?.endLoading(latencyData: nil)
            }
        }
    }
    
    func beginLoading() {
        contentView.isHidden = true
        segmentedControl.isUserInteractionEnabled = false
        loader.startAnimating()
    }
    
    func endLoading(latencyData: LatencyData?, resultCount: Int = 0) {
        loader.stopAnimating()
        segmentedControl.isUserInteractionEnabled = true
        guard let latencyData = latencyData else {
            return
        }
        
        contentView.isHidden = false
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss.SSS"
        titleLabel.text = "\(resultCount) things to do in \(parameters.location)"
        
        beginAtLabel.text = dateFormatter.string(from: latencyData.startDate)
        receivedAtLabel.text = dateFormatter.string(from: latencyData.responseReceivedDate)
        parsedAtLabel.text = dateFormatter.string(from: latencyData.responseParsedDate)

        let networkTime = latencyData.responseReceivedDate.timeIntervalSince(latencyData.startDate)
        let parseTime = latencyData.responseParsedDate.timeIntervalSince(latencyData.responseReceivedDate)
        let totalTime = latencyData.responseParsedDate.timeIntervalSince(latencyData.startDate)
        networkTimeLabel.text = "\(networkTime)"
        parsingTimeLabel.text = "\(parseTime)"
        totalTimeLabel.text = "\(totalTime)"
    }
}

