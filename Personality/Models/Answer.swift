import Foundation

final class Answer: Identifiable {
    var id = UUID()
    var text: String
    
    init(text: String) {
        self.text = text
    }
}
