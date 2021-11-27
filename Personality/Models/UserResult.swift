import Foundation

struct UserResult: Identifiable, Equatable {
    static func == (lhs: UserResult, rhs: UserResult) -> Bool {
        lhs.id == rhs.id
    }
    
    var id = UUID()
    var result: Result
    var isPrivate: Bool
    //    var user: User
    //    var isSelected: Bool
    
    init(result: Result, isPrivate: Bool) {
        self.result = result
        self.isPrivate = isPrivate
        //        self.user = user
        //        self.isSelected = isSelected
    }
}
