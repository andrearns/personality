import Foundation

final class QuizModel: Identifiable {
    var id = UUID()
    var name: String
    var durationInMinutes: Int
    var shortDescription: String?
    var longDescription: String?
    var backgroundColorName: String
    var questionList: [QuestionModel]
    var outputList: [OutputModel]
    
    init(name: String, shortDescription: String, durationInMinutes: Int, longDescription: String, backgroundColorName: String, questionList: [QuestionModel], outputList: [OutputModel]) {
        self.name = name
        self.shortDescription = shortDescription
        self.durationInMinutes = durationInMinutes
        self.longDescription = longDescription
        self.backgroundColorName = backgroundColorName
        self.questionList = questionList
        self.outputList = outputList
    }
}
