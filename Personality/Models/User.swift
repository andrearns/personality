import Foundation

struct User: Codable {
    var id = UUID()
    var name: String
    var baseAvatar: Ego
    var userResults: [UserResult]
    
    init(name: String, baseAvatar: Ego, userResults: [UserResult]) {
        self.name = name
        self.baseAvatar = baseAvatar
        self.userResults = userResults
    }
}
