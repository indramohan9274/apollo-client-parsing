import Foundation
import Apollo

class ActivitySearchServiceRequest {

    typealias Completion = ((RequestResult<ActivitySearchQuery.Data.ActivitySearch>) -> Void)?
    typealias Operation = ActivitySearchQuery

    lazy var query: Operation = {
        return ActivitySearchQuery(context: ServiceClient.shared.context,
                                   region: activityRegion,
                                   dateRange: dateRange)
    }()

    private var activityRegion: ActivityRegionInput {
        return ActivityRegionInput(regionId: searchParameters.regionId,
                                   regionName: searchParameters.location)
    }

    private var dateRange: ActivityDateRangeInput {
        return ActivityDateRangeInput(endDate: endDate, startDate: startDate)
    }

    private var startDate: DateInput {
        return DateInput(day: searchParameters.startDate.day,
                         month: searchParameters.startDate.month,
                         year: searchParameters.startDate.year)
    }

    private var endDate: DateInput {
        return DateInput(day: searchParameters.endDate.day,
                         month: searchParameters.endDate.month,
                         year: searchParameters.endDate.year)
    }

    private let searchParameters: SearchParameters

    init(searchParameters: SearchParameters) {
        self.searchParameters = searchParameters
    }

    func execute(completion: Completion) -> Cancellable? {
        return ServiceClient.shared.fetch(query: query) { (result, error, latencyData) in
            var requestResult: RequestResult<ActivitySearchQuery.Data.ActivitySearch>
            defer {
                completion?(requestResult)
            }
            if let error = error {
                requestResult = .failure(error)
                return
            }
            guard let searchResult = result?.data?.activitySearch else {
                requestResult = .failure(result!.errors![0])
                return
            }
            requestResult = .success(searchResult, latencyData)
        }
    }
}
