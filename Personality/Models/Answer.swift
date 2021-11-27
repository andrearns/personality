import Foundation

struct Answer: Identifiable, Equatable {
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
