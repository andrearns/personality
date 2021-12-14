//
//  UserViewModel.swift
//  Personality
//
//  Created by André Arns on 25/11/21.
//

import Foundation
import Combine

class UserViewModel: ObservableObject {
    
    @Published var user: User = User(name: "", baseAvatar: .diabinho, userResults: [], apple_id: "")
    @Published var userResults: [UserResult] = []
    
    @Published var selectedUserResult: UserResult?
    
    private var usersService: UsersServiceProtocol
    private var userResultsService: UserResultsServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(usersService: UsersServiceProtocol = UsersService(), userResultsService: UserResultsServiceProtocol = UserResultsService())  {
        self.usersService = usersService
        self.userResultsService = userResultsService
    }
    
    func updateUserResultVisibility(isPrivate: Bool) {
        let index = userResults.firstIndex { result in
            result == selectedUserResult
        }
        
        guard let index = index else { return }
        
        userResults[index].isPrivate = isPrivate
        let userResult = userResults[index]
        
        userResultsService.updateUserResult(with: userResult)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                case .finished: break
                }
            } receiveValue: { userResult in
                print("Successfully updated userResult \(userResult.id.uuidString)")
            }
            .store(in: &cancellables)
    }
    
    func splitAboutTextInParagraphs() -> [String] {
        return selectedUserResult!.result.about.components(separatedBy: "\n")
    }
    
    func updateUserAvatar(ego: Ego) {
        user.baseAvatar = ego
    }
    
    func updateUsername(newName: String) {
        user.name = newName
    }
    
    func updateUserData(ego: Ego, newName: String) {
        usersService.updateUserData(baseAvatar: ego.rawValue, name: newName)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                case .finished: break
                }
            } receiveValue: { [weak self] user in
                self?.user = user
            }
            .store(in: &cancellables)
    }
    
    public func onAppear() {
        self.getUserResults()
    }
    
    private func getUser() {
        guard let user = usersService.getUserData() else { return }
        self.user = user
    }
    
    private func getUserResults() {
        userResultsService.getUserResults()
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                    if let jsonPayload = error.jsonPayload {
                        print(jsonPayload)
                    }
                case .finished: break
                }
            } receiveValue: { [weak self] userResults in
                print(userResults)
                self?.userResults = userResults
            }
            .store(in: &cancellables)
    }
}
