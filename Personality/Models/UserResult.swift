import Foundation

<<<<<<< HEAD
struct UserResult: Identifiable, Equatable {
    static func == (lhs: UserResult, rhs: UserResult) -> Bool {
        lhs.id == rhs.id
    }
    
    var id = UUID()
    var result: Result
=======
final class UserResult: Decodable {
    var user_id: UUID
    var result_id: UUID
    var isSelected: Bool
>>>>>>> 313fbdf (feat: Base API Service)
    var isPrivate: Bool
    //    var user: User
    //    var isSelected: Bool
    
<<<<<<< HEAD
    init(result: Result, isPrivate: Bool) {
        self.result = result
=======
    init(user_id: UUID, result_id: UUID, isSelected: Bool, isPrivate: Bool) {
        self.user_id = user_id
        self.result_id = result_id
        self.isSelected = isSelected
>>>>>>> 313fbdf (feat: Base API Service)
        self.isPrivate = isPrivate
        //        self.user = user
        //        self.isSelected = isSelected
    }
}
