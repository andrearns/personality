import Foundation

final class Quiz: Identifiable {
    var id = UUID()
    var imageName: String?
    var title: String
    var shortDescription: String?
    var longDescription: String?
    var durationInMinutes: Int
    var colorName: String
    var questions: [Question]
    var results: [Result]
    
    init(title: String, imageName: String? = nil, shortDescription: String, longDescription: String, durationInMinutes: Int, colorName: String, questions: [Question], results: [Result]) {
        self.title = title
        self.imageName = imageName
        self.shortDescription = shortDescription
        self.longDescription = longDescription
        self.durationInMinutes = durationInMinutes
        self.colorName = colorName
        self.questions = questions
        self.results = results
    }
}
