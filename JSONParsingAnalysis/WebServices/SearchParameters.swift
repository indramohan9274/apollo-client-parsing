import Foundation

struct SearchLocation {
    let name: String
    let regionId: String
}

struct SearchParameters {
    let location: String
    let startDate: Date
    let endDate: Date
    let regionId: String
    init(location: String,
         startDate: Date,
         endDate: Date,
         regionId: String) {
        self.location = location
        self.startDate = startDate
        self.endDate = endDate
        self.regionId = regionId
    }
}
