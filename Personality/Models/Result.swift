import Foundation

struct Result: Identifiable, Decodable, Equatable {
    var id = UUID()
    var label: String
    var about: String
    var code: String
    var badge: Badge?
    var image: String?
    var color: String
    
    init(label: String, about: String, code: String, badge: Badge, color: String) {
        self.label = label
        self.about = about
        self.code = code
        self.badge = badge
        self.color = color
    }
    
    static func == (lhs: Result, rhs: Result) -> Bool {
        lhs.id == rhs.id
    }
}
