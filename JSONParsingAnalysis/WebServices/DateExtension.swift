import Foundation

extension Date {
    var dateComponents: DateComponents {
        let calendar = Calendar(identifier: .gregorian)
        return calendar.dateComponents([.year, .month, .day], from: self)
    }
    var day: Int {
        return dateComponents.day ?? 0
    }
    var month: Int {
        return dateComponents.month ?? 0
    }
    var year: Int {
        return dateComponents.year ?? 0
    }
}
