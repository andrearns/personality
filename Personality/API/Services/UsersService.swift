//
//  UsersService.swift
//  Personality
//
//  Created by Thiago Medeiros on 10/12/21.
//

import Foundation
import Combine

protocol UsersServiceProtocol: AnyObject {
    var apiClient: APIClient { get }
    
    func getUserData() -> User?
    func fetchUser() -> AnyPublisher<GetUser.ReturnType, NetworkRequestError>
    func updateUserData(baseAvatar: String, name: String) -> AnyPublisher<UpdateUser.ReturnType, NetworkRequestError>
}

class UsersService: UsersServiceProtocol {
    let apiClient: APIClient
    
    init(apiClient: APIClient = APIClient()) {
        self.apiClient = apiClient
    }
    
    func getUserData() -> User? {
        guard let userData = UserDefaults.standard.data(forKey: "user") else {
            return nil
        }
        
        let user = try? JSONDecoder().decode(User.self, from: userData)
        return user
    }
    
    func fetchUser() -> AnyPublisher<GetUser.ReturnType, NetworkRequestError> {
        guard let token = UserDefaults.standard.string(forKey: "token") else {
            fatalError("No token provided")
        }
        
        return apiClient.dispatch(GetUser(token: token))
    }
    
    func updateUserData(baseAvatar: String, name: String) -> AnyPublisher<UpdateUser.ReturnType, NetworkRequestError> {
        guard let token = UserDefaults.standard.string(forKey: "token") else {
            fatalError("No token provided")
        }
        
        let body = [
            "baseAvatar": baseAvatar,
            "name": name
        ]
        
        return apiClient.dispatch(UpdateUser(token: token, body: body))
    }
}
