//
//  SignUpViewModel.swift
//  MusicApp
//
//  Created by vishnuprasadm on 16/07/25.
//

import Foundation
class SignUpViewModel {
    
    private let networkService: SignUpNetworkService
    init(networkService: SignUpNetworkService) {
        self.networkService = networkService
    }
    func signUp() {
        let req = SignUpRequest(name: "", password: "", email: "")
        networkService.signUp(with: req) { response, error in
            
        }
        
    }
}
