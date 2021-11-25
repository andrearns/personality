import Foundation

<<<<<<< HEAD
struct Question: Identifiable {
=======
final class Question: Identifiable, Decodable {
>>>>>>> abee6af (feat: QuizzesRepository)
    var id = UUID()
    var label: String
    var answers: [Answer]
    
    init(label: String, answers: [
        Answer]) {
        self.label = label
        self.answers = answers
    }
}
