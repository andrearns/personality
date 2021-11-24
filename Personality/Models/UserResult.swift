import Foundation

final class UserResult: Decodable {
    var user_id: UUID
    var result_id: UUID
    var isSelected: Bool
    var isPrivate: Bool
    
    init(user_id: UUID, result_id: UUID, isSelected: Bool, isPrivate: Bool) {
        self.user_id = user_id
        self.result_id = result_id
        self.isSelected = isSelected
        self.isPrivate = isPrivate
    }
}
