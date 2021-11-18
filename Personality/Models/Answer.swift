import Foundation

final class Answer: Identifiable {
    var id = UUID()
    var label: String
    var score: String
    
    init(label: String, score: String) {
        self.label = label
        self.score = score
    }
}
