//
//  PresenterTest.swift
//  MusicAppTests
//
//  Created by vishnuprasadm on 18/07/25.
//

import XCTest
@testable import MusicApp
final class PresenterTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPresenter() {
        let vm = SignInFormModel(name: "name", email : "email", password : "password")
        let sut = SignInPresenter()
        sut.processUserSignUp(model: vm)
        let mockSignUpModelValidator = MockSignInModelValidator()
        XCTAssertTrue(mockSignUpModelValidator.isFirstNameValid)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
