//
//  MockSignInModelValidator.swift
//  MusicAppTests
//
//  Created by vishnuprasadm on 18/07/25.
//

import Foundation
@testable import MusicApp
class MockSignInModelValidator : ValidatorProtocol{
    func isFirstNameValid(firstName: String) -> Bool {
        return true
    }
    
    var isFirstNameValid : Bool = false
}
