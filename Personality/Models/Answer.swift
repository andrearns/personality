import Foundation

<<<<<<< HEAD
struct Answer: Identifiable, Equatable {
=======
final class Answer: Identifiable, Equatable, Decodable {
>>>>>>> abee6af (feat: QuizzesRepository)
    static func == (lhs: Answer, rhs: Answer) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id = UUID()
    var label: String
    var score: String
    
    init(label: String, score: String) {
        self.label = label
        self.score = score
    }
}
