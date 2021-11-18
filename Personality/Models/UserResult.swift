import Foundation

final class UserResult {
    var user: User
    var result: Result
    var isSelected: Bool
    var isPrivate: Bool
    
    init(user: User, result: Result, isSelected: Bool, isPrivate: Bool) {
        self.user = user
        self.result = result
        self.isSelected = isSelected
        self.isPrivate = isPrivate
    }
}
