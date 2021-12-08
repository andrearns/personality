import Foundation

struct Quiz: Identifiable, Codable {
    var id = UUID()
    var image: String?
    var image_url: String?
    var title: String
    var subtitle: String?
    var about: String?
    var estimatedTimeInMinutes: Int
    var color: String
    var questions: [Question]?
    var results: [QuizResult]?
    
    init(title: String, image: String? = nil, image_url: String? = nil, subtitle: String, about: String, estimatedTimeInMinutes: Int, color: String, questions: [Question], results: [QuizResult]) {
        self.title = title
        self.image = image
        self.image_url = image_url
        self.subtitle = subtitle
        self.about = about
        self.estimatedTimeInMinutes = estimatedTimeInMinutes
        self.color = color
        self.questions = questions
        self.results = results
    }
    
    func hasQuestions() -> Bool {
        if let questions = questions {
            return questions.count != 0
        }
        return false
    }
}
