//
//  UserViewModel.swift
//  Personality
//
//  Created by André Arns on 25/11/21.
//

import Foundation

class UserViewModel: ObservableObject {
    
    @Published var user: User = User(name: "ronaldinho", baseAvatarURL: "Estrelinha", userResults: [
        UserResult(result: QuizBank.shared.quizList[0].results[0], isPrivate: false),
        UserResult(result: QuizBank.shared.quizList[1].results[0], isPrivate: false)
    ])
    
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
}
