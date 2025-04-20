//
//  APIService.swift
//  Airalo Demo
//
//  Created by Baboon on 20.4.25.
//

import Foundation

class APIService {
    static let shared = APIService()
    
    private init() {}
    
    func fetch<T: Decodable>(_ endpoint: Endpoint, type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        let url = endpoint.url
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    completion(.failure(error))
                    return
                }
                
                guard let data = data else {
                    completion(.failure(NSError(domain: "Something went wrong", code: -1, userInfo: nil)))
                    return
                }
                
                do {
                    let decoded = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(decoded))
                } catch {
                    completion(.failure(error))
                }
            }
        }.resume()
    }
}
