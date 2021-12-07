//
//  UserViewModel.swift
//  Personality
//
//  Created by André Arns on 25/11/21.
//

import Foundation

class UserViewModel: ObservableObject {
    
    @Published var user: User = User(name: "", baseAvatar: .diabinho, userResults: [], apple_id: "")
    
    @Published var selectedUserResult: UserResult?
    
    func updateUserResultVisibility(isPrivate: Bool) {
        let index = user.userResults.firstIndex { result in
            result == selectedUserResult
        }
        
        guard let index = index else { return }
        
        user.userResults[index].isPrivate = isPrivate
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
    
    func addUserResult(userResult: UserResult) {
        user.userResults.append(userResult)
    }
}
