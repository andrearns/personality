import Foundation

final class Quiz: Identifiable {
    var id = UUID()
    var name: String
    var shortDescription: String?
    var longDescription: String?
    var backgroundColorName: String
    
    init(name: String, shortDescription: String, longDescription: String, backgroundColorName: String) {
        self.name = name
        self.shortDescription = shortDescription
        self.longDescription = longDescription
        self.backgroundColorName = backgroundColorName
    }
}
