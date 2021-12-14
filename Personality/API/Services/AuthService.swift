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
    var apiClient: APIClient { get }
    
    func saveUserData(user: User, token: String)
    func deleteUserData()
    func generateToken(name: String?, email: String?, apple_id: String?) -> AnyPublisher<AuthenticateUser.ReturnType, NetworkRequestError>
    func getSavedToken() -> String?
}

class AuthService: AuthServiceProtocol {
    let apiClient: APIClient
    
    init(apiClient: APIClient = APIClient()) {
        self.apiClient = apiClient
    }
    
    func saveUserData(user: User, token: String) {
        let userData = try? JSONEncoder().encode(user)
        UserDefaults.standard.set(userData, forKey: "user")
        UserDefaults.standard.setValue(token, forKey: "token")
    }
    
    func deleteUserData() {
        UserDefaults.standard.setValue(nil, forKey: "user")
        UserDefaults.standard.setValue(nil, forKey: "token")
    }
    
    func generateToken(name: String?, email: String?, apple_id: String?) -> AnyPublisher<AuthenticateUser.ReturnType, NetworkRequestError> {
        let requestBody = AuthenticateUserRequestDTO(apple_id: apple_id, name: name, email: email)
        
        return apiClient.dispatch(AuthenticateUser(body: requestBody.asDictionary))
    }
    
    func getSavedToken() -> String? {
        guard let token = UserDefaults.standard.string(forKey: "token") else { return nil }
        
        if token.isEmpty {
            return nil
        }
        
        return token
    }
}
