//
//  URLProtocolStub.swift
//  Airalo DemoTests
//
//  Created by Lend Kazazi on 24.4.25.
//

import Foundation

final class URLProtocolStub: URLProtocol {
    
    static var testURLs = [URL: Data]()
    static var error: Error?
    
    override class func canInit(with request: URLRequest) -> Bool {
        return true
    }
    
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }
    
    override func startLoading() {
        if let error = Self.error {
            client?.urlProtocol(self, didFailWithError: error)
        } else if let url = request.url, let data = Self.testURLs[url] {
            let response = HTTPURLResponse(
                url: url,
                statusCode: 200,
                httpVersion: nil,
                headerFields: nil
            )!
            client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
            client?.urlProtocol(self, didLoad: data)
        }
        client?.urlProtocolDidFinishLoading(self)
    }
    
    override func stopLoading() {
    }
    
}

