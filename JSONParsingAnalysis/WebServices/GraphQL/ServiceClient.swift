import Foundation
import Apollo

class ServiceClient {
    static let shared = ServiceClient()
    private lazy var latencyInterceptor = LatencyInterceptor()
    private lazy var interceptor = ServicesInterceptor(latencyInterceptor: latencyInterceptor)
    var context: ContextInput = {
        return ContextInput(clientInfo: ClientInfoInput(name: "ios.com.expedia",
                                                        version: "1.0"),
                            debugContext: nil,
                            device: DeviceInput(type: .mobilePhone),
                            eapid: nil,
                            identity: IdentityInput(authState: .anonymous,
                                                    duaid: "6D8CBB8E-2358-4D7B-90E6-C3D939F8723C",
                                                    expUserId: "50927249",
                                                    tuid: "705094392"),
                            locale: "en_US",
                            siteId: 1)
    }()

    lazy var client: ApolloClient = {
        let graphQLServiceURL = URL(string: "https://www.expedia.com/graphql")!
        let transport = HTTPNetworkTransport(url: graphQLServiceURL)
        transport.delegate = interceptor
        return ApolloClient(networkTransport: transport)
    }()
    
    func fetch<Query>(query: Query, resultHandler: ((GraphQLResult<Query.Data>?, Error?, LatencyData) -> Void)?) -> Cancellable? where Query: GraphQLQuery {
        var latencyData = LatencyData()
        latencyData.startDate = Date()
        return client.fetch(query: query, cachePolicy: .fetchIgnoringCacheData) { [weak self] (result, error) in
            latencyData.responseReceivedDate = self?.latencyInterceptor.lastResponseReceivedAt ?? Date()
            if let error = error {
                latencyData.responseParsedDate = Date()
                resultHandler?(nil, error, latencyData)
                return
            }
            latencyData.responseParsedDate = Date()
            resultHandler?(result, nil, latencyData)
        }
    }
}

class ServicesInterceptor: HTTPNetworkTransportDelegate {
    let latencyInterceptor: LatencyInterceptor
    
    init(latencyInterceptor: LatencyInterceptor) {
        self.latencyInterceptor = latencyInterceptor
    }

    func intercept() -> HTTPNetworkTransportInterception {
        return ServicesInterception(latencyInterceptor: latencyInterceptor)
    }
}

class ServicesInterception: HTTPNetworkTransportInterception {
    
    let latencyInterceptor: LatencyInterceptor
    
    init(latencyInterceptor: LatencyInterceptor) {
        self.latencyInterceptor = latencyInterceptor
    }
    
    func willSend(request: URLRequest) -> URLRequest? {
        return request
    }
    
    func didRecieve(error: Error) -> Error? {
        return error
    }
    
    func didRecieve(response: HTTPURLResponse) -> HTTPURLResponse? {
        latencyInterceptor.lastResponseReceivedAt = Date()
        return response
    }
}

class LatencyInterceptor {
    var lastResponseReceivedAt = Date()
}
