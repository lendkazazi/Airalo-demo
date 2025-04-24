//
//  APIService.swift
//  Airalo Demo
//
//  Created by Lend Kazazi on 20.4.25.
//

import Foundation

class APIService {
    static let shared = APIService()
    
    var session: URLSession = .shared
    
    private init() {}
    
    func fetch<T: Decodable>(_ endpoint: Endpoint,as type: T.Type) async throws -> T {
        let (data, response) = try await session.data(from: endpoint.url)
        
        if let http = response as? HTTPURLResponse, http.statusCode != 200 {
            throw URLError(.badServerResponse)
        }
        return try JSONDecoder().decode(T.self, from: data)
    }
}
