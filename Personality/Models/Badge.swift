import Foundation

struct Badge: Decodable {
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
