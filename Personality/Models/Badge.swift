import Foundation

<<<<<<< HEAD
struct Badge {
=======
final class Badge: Decodable {
>>>>>>> abee6af (feat: QuizzesRepository)
    var id = UUID()
    var iconImageURL: String
    var profileImagesURL: [Ego : String]
//    var label: String
    
    init(iconImageURL: String, profileImagesURL: [Ego : String]) {
        self.iconImageURL = iconImageURL
        self.profileImagesURL = profileImagesURL
//        self.label = label
    }
}
