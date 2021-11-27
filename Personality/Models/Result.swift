import Foundation

struct Result: Identifiable, Equatable {
    var id = UUID()
    var label: String
    var about: String
    var code: String
    var badge: Badge?
//    var imageName: String?
    var colorName: String
    
    init(label: String, about: String, code: String, badge: Badge, colorName: String) {
        self.label = label
        self.about = about
        self.code = code
        self.badge = badge
        self.colorName = colorName
    }
    
    static func == (lhs: Result, rhs: Result) -> Bool {
        lhs.id == rhs.id
    }
}
