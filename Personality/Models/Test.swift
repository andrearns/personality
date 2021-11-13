import Foundation

final class Quiz: Identifiable {
    var id = UUID()
    var name: String
    var shortDescription: String?
    var longDescription: String?
    
    init(name: String, shortDescription: String, longDescription: String) {
        self.name = name
        self.shortDescription = shortDescription
        self.longDescription = longDescription
    }
}
