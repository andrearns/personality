import Foundation

final class User: Decodable {
    var id = UUID()
    var name: String
    var baseAvatarURL: String
    var userResults: [UserResult]
    
    init(name: String, baseAvatarURL: String, userResults: [UserResult]) {
        self.name = name
        self.baseAvatarURL = baseAvatarURL
        self.userResults = userResults
    }
}
