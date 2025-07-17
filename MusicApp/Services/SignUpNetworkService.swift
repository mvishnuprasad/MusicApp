//
//  Services.swift
//  MusicApp
//
//  Created by vishnuprasadm on 16/07/25.
//

import Foundation
class SignUpNetworkService : NetWorkProtocols {
    private var urlSession : URLSession
    init(urlSession: URLSession = .shared) {
        self.urlSession = urlSession
    }
    override func signUp(with request: SignUpRequest, _ completion: @escaping (SignUpResponseModel?, SignUpError?) -> Void) {
        guard let url = URL(string: "https://api.escuelajs.co/api/v1/users/") else {return}
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
         let task = urlSession.dataTask(with: request , completionHandler: { data , response, error in
             if let receivedData = data{
                 do {
                       let response = try JSONDecoder().decode(SignUpResponseModel.self, from: receivedData)
                     completion(response, nil)
                     }
                 
                 catch {
                     
                 }
             }
            
        })
        task.resume()
    }
}
