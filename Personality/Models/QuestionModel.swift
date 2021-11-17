import Foundation

final class QuestionModel: Identifiable {
    var id = UUID()
    var title: String
    var answerList: [AnswerModel]
    
    init(title: String, answerList: [
        AnswerModel]) {
        self.title = title
        self.answerList = answerList
    }
}
