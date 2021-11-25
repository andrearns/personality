import Foundation

final class Badge: Decodable {
    var id = UUID()
    var imageURL: String
    var label: String
    
    init(imageURL: String, label: String) {
        self.imageURL = imageURL
        self.label = label
    }
}
