//
//  MusicAppTests.swift
//  MusicAppTests
//
//  Created by vishnuprasadm on 16/07/25.
//

import XCTest
@testable import MusicApp

final class MusicAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_SignUpNetworkService_SignUpResponse_Success () {
        //Arrange
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [MockURLProtocol.self]
        let uRLSession = URLSession(configuration: config)
        
        let sut = SignUpNetworkService(urlSession: uRLSession)
        let expectation = expectation(description: "wait for api call")
        let request = SignUpRequest(name: "UserName", password: "Abc@123", email: "Abc@123")
        sut.signUp(with: request) { (result, error) in
            //Act
            XCTAssertEqual(result?.status, Status.ok)
            expectation.fulfill()
        }
        self.wait(for: [expectation],timeout: 5)
        
    }
    
    

}
