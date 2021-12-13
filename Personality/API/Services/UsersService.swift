//
//  UsersService.swift
//  Personality
//
//  Created by Thiago Medeiros on 10/12/21.
//

import Foundation
import Combine

protocol UsersServiceProtocol: AnyObject {
    var networker: NetworkerProtocol { get }
    
    func getUserData() -> User?
    func updateUserData(baseAvatar: String, name: String) -> AnyPublisher<User, Error>
    func getUserResults() -> AnyPublisher<[UserResult], Error>
    func createUserResult(with userResult: UserResult) -> AnyPublisher<UserResult, Error>
    func updateUserResult(with userResult: UserResult) -> AnyPublisher<UserResult, Error>
}

class UsersService: UsersServiceProtocol {
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func getUserData() -> User? {
        guard let userData = UserDefaults.standard.data(forKey: "user") else {
            return nil
        }
        
        let user = try? JSONDecoder().decode(User.self, from: userData)
        return user
    }
    
    func updateUserData(baseAvatar: String, name: String) -> AnyPublisher<User, Error> {
        guard let token = UserDefaults.standard.string(forKey: "token") else {
            fatalError("No token provided")
        }
        let endpoint = Endpoint.userAvatar(token: token)
        
        let body = [
            "baseAvatar": baseAvatar,
            "name": name
        ]
        
        return networker.post(type: User.self,
                              url: endpoint.url,
                              headers: endpoint.headers,
                              body: body)
    }
    
    func getUserResults() -> AnyPublisher<[UserResult], Error> {
        guard let token = UserDefaults.standard.string(forKey: "token") else {
            fatalError("No token provided")
        }
        let endpoint = Endpoint.usersResultsList(token: token)
        
        return networker.get(
            type: [UserResult].self,
            url: endpoint.url,
            headers: endpoint.headers
        )
    }
    
    func createUserResult(with userResult: UserResult) -> AnyPublisher<UserResult, Error> {
        guard let token = UserDefaults.standard.string(forKey: "token") else {
            fatalError("No token provided")
        }
        let endpoint = Endpoint.usersResults(token: token)
        
        let body = [
            "result_id": userResult.result_id.uuidString,
            "isSelected": userResult.isSelected.description,
            "isPrivate": userResult.isPrivate.description
        ]
        
        return networker.post(type: UserResult.self,
                              url: endpoint.url,
                              headers: endpoint.headers,
                              body: body)
    }
    
    func updateUserResult(with userResult: UserResult) -> AnyPublisher<UserResult, Error> {
        guard let token = UserDefaults.standard.string(forKey: "token") else {
            fatalError("No token provided")
        }
        let endpoint = Endpoint.usersResults(token: token)
        
        let body = [
            "id": userResult.id.uuidString,
            "isSelected": userResult.isSelected.description,
            "isPrivate": userResult.isPrivate.description
        ]
        
        return networker.patch(type: UserResult.self,
                              url: endpoint.url,
                              headers: endpoint.headers,
                              body: body)
    }
    
    func generateToken(name: String?, email: String?, apple_id: String?) -> AnyPublisher<AuthDTO, Error> {
        let endpoint = Endpoint.auth
        
        let body = [
            "apple_id": apple_id,
            "name": name,
            "email": email
        ]
        
        return networker.post(type: AuthDTO.self,
                              url: endpoint.url,
                              headers: endpoint.headers,
                              body: body)
    }
}
