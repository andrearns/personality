//
//  AuthService.swift
//  Personality
//
//  Created by Thiago Medeiros on 06/12/21.
//

import Foundation
import Combine
import AuthenticationServices

protocol AuthServiceProtocol: AnyObject {
    var networker: NetworkerProtocol { get }
    
    func saveUserData(user: User, token: String)
    func deleteUserData()
    func generateToken(name: String?, email: String?, apple_id: String?) -> AnyPublisher<Auth, Error>
}

class AuthService: AuthServiceProtocol {
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func saveUserData(user: User, token: String) {
        UserDefaults.standard.setValue(user, forKey: "user")
        UserDefaults.standard.setValue(token, forKey: "token")
    }
    
    func deleteUserData() {
        UserDefaults.standard.setValue(nil, forKey: "user")
        UserDefaults.standard.setValue(nil, forKey: "token")
    }
    
    func generateToken(name: String?, email: String?, apple_id: String?) -> AnyPublisher<Auth, Error> {
        let endpoint = Endpoint.auth
        
        let body = [
            "apple_id": apple_id,
            "name": name,
            "email": email
        ]
        
        return networker.post(type: Auth.self,
                              url: endpoint.url,
                              headers: endpoint.headers,
                              body: body)
    }
    
}
