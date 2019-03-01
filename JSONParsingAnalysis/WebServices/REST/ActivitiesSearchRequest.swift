import Foundation

typealias SearchRequestCompletion = ((RequestResult<ActivitiesSearchResponse>) -> Void)

struct ActivitiesSearchRequest {
    
    private let searchParameters: SearchParameters
    var url = URL(string: "https://www.expedia.com/lx/api/search")!
    let httpMethod = "GET"

    var queryParameters: [String: String] {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        var params = [String: String]()
        params["rid"] = searchParameters.regionId
        params["location"] = searchParameters.location
        params["startDate"] = dateFormatter.string(from: searchParameters.startDate)
        params["endDate"] = dateFormatter.string(from: searchParameters.endDate)
        params["sourceType"] = "mobileapp"
        params["langid"] = "1033"
        params["expertPicks"] = "true"
        params["modQualified"] = "true"
        params["vbpEnabled"] = "true"
        return params
    }
    
    var request: URLRequest {
        var components = URLComponents(url: url, resolvingAgainstBaseURL: false)!
        components.queryItems = queryParameters.map {
            URLQueryItem(name: $0, value: $1)
        }
        return URLRequest(url: components.url!)
    }
    
    init(searchParameters: SearchParameters) {
        self.searchParameters = searchParameters
    }
    
    func execute(completion: @escaping SearchRequestCompletion) -> URLSessionDataTask {
        var latencyData = LatencyData()
        latencyData.startDate = Date()
        let task = URLSession(configuration: .default).dataTask(with: request, completionHandler: { (data, _, error) in
            latencyData.responseReceivedDate = Date()
            var requestResult: RequestResult<ActivitiesSearchResponse>
            defer {
                OperationQueue.main.addOperation {
                    completion(requestResult)
                }
            }
            guard let responseData = data else {
                requestResult = .failure(error ?? NSError())
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let response = try decoder.decode(ActivitiesSearchResponse.self, from: responseData)
                latencyData.responseParsedDate = Date()
                requestResult = .success(response, latencyData)
            } catch _ {
                requestResult = .failure(error ?? NSError())
            }
        })
        task.resume()
        return task
    }
}
