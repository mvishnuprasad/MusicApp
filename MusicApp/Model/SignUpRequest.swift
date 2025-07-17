//
//  SignUpRequest.swift
//  MusicApp
//
//  Created by vishnuprasadm on 16/07/25.
//

import Foundation
class SignUpRequest {
    let name : String?
    let password : String?
    let email : String?
    init(name: String?, password: String?, email: String?) {
        self.name = name
        self.password = password
        self.email = email
    }
}
