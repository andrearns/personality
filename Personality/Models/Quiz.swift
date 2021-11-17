import Foundation

final class Quiz: Identifiable {
    var id = UUID()
    var name: String
    var durationInMinutes: Int
    var shortDescription: String?
    var longDescription: String?
    var backgroundColorName: String
    var questionList: [Question]
    var outputList: [Output]
    
    init(name: String, shortDescription: String, durationInMinutes: Int, longDescription: String, backgroundColorName: String, questionList: [Question], outputList: [Output]) {
        self.name = name
        self.shortDescription = shortDescription
        self.durationInMinutes = durationInMinutes
        self.longDescription = longDescription
        self.backgroundColorName = backgroundColorName
        self.questionList = questionList
        self.outputList = outputList
    }
}
