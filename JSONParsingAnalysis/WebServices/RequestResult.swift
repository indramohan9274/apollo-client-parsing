import Foundation

enum RequestResult<T> {
    case success(T, LatencyData)
    case failure(Error)
}

struct LatencyData {
    var startDate = Date()
    var responseReceivedDate = Date()
    var responseParsedDate = Date()
}
