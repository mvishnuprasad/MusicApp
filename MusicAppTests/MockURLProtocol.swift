//
//  MockURLProtocol.swift
//  MusicAppTests
//
//  Created by vishnuprasadm on 17/07/25.
//

import Foundation
import Foundation

class MockURLProtocol: URLProtocol {
    
    // This handler lets you customize the response in your test
    static var requestHandler: ((URLRequest) throws -> (HTTPURLResponse, Data))?
    
    override class func canInit(with request: URLRequest) -> Bool {
        // Intercept all requests
        return true
    }

    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        // Return the same request unmodified
        return request
    }

    override func startLoading() {
        guard let handler = MockURLProtocol.requestHandler else {
            fatalError("No handler set for MockURLProtocol.")
        }

        do {
            // Get the mock response and data from the handler
            let (response, data) = try handler(request)
            
            // Send response to the client
            client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
            client?.urlProtocol(self, didLoad: data)
            client?.urlProtocolDidFinishLoading(self)
        } catch {
            // Send error if the handler throws
            client?.urlProtocol(self, didFailWithError: error)
        }
    }

    override func stopLoading() {
        // Required override — usually left empty
    }
}
