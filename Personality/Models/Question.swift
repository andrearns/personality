import Foundation

final class Question: Identifiable {
    var id = UUID()
    var title: String
    var answerList: [Answer]
    
    init(title: String, answerList: [Answer]) {
        self.title = title
        self.answerList = answerList
    }
}
