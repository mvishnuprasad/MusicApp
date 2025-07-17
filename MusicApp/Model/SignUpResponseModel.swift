//
//  SignUpResponseModel.swift
//  MusicApp
//
//  Created by vishnuprasadm on 16/07/25.
//

import Foundation
class SignUpResponseModel : Decodable{
    let status : Status?
    let error : SignUpError?
    let token : String?
    init(status: Status?, error: SignUpError?, token: String?) {
        self.status = status
        self.error = error
        self.token = token
    }
}


enum Status : Int, Decodable {
    case ok =  200
    case created = 201
    case badRequest = 400
    case unauthorized = 401
}
enum SignUpError : Error , Decodable{
    case responseParseError
    case nullError
    case unAuthorised
}
