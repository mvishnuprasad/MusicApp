//
//  SignInFormModel.swift
//  MusicApp
//
//  Created by vishnuprasadm on 18/07/25.
//

import Foundation
class SignInFormModel {
    var name : String
    var email : String
    var password : String
    init(name: String, email: String, password: String) {
        self.name = name
        self.email = email
        self.password = password
    }
}
