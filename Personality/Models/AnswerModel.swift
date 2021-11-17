import Foundation

final class AnswerModel: Identifiable {
    var id = UUID()
    var text: String
    
    init(text: String) {
        self.text = text
    }
}
