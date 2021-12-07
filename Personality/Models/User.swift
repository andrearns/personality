import Foundation

struct User: Codable {
    var id = UUID()
    var name: String
    var baseAvatar: Ego
    var apple_id: String
    var userResults: [UserResult]
    
    init(name: String, baseAvatar: Ego, userResults: [UserResult], apple_id: String) {
        self.name = name
        self.baseAvatar = baseAvatar
        self.userResults = userResults
        self.apple_id = apple_id
    }
}
