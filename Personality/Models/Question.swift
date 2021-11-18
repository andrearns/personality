import Foundation

final class Question: Identifiable {
    var id = UUID()
    var label: String
    var answers: [Answer]
    
    init(label: String, answers: [
        Answer]) {
        self.label = label
        self.answers = answers
    }
}
