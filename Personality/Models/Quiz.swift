import Foundation

final class Quiz: Identifiable {
    var id = UUID()
    var name: String
    var shortDescription: String?
    var longDescription: String?
    var backgroundColorName: String
    var questionList: [Question]
    
    init(name: String, shortDescription: String, longDescription: String, backgroundColorName: String, questionList: [Question]) {
        self.name = name
        self.shortDescription = shortDescription
        self.longDescription = longDescription
        self.backgroundColorName = backgroundColorName
        self.questionList = questionList
    }
}
