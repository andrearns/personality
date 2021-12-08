import Foundation

struct Badge: Codable {
    var id = UUID()
    var image_url: String
//    var profileImagesURL: [Ego : String]
//    var label: String
    
    init(image_url: String, profileImagesURL: [Ego : String]) {
        self.image_url = image_url
//        self.profileImagesURL = profileImagesURL
//        self.label = label
    }
}
