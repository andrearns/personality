import Foundation

func generateDISCResult(answers: [Int : Answer]) -> QuizResult {
    
    var scores: [String : Int] = [
        "d" : 0,
        "i" : 0,
        "s" : 0,
        "c" : 0
    ]
    
    for i in 0..<answers.count {
        switch answers[i]!.score {
        case "d":
            scores["d"]! += 1
        case "i":
            scores["i"]! += 1
        case "s":
            scores["s"]! += 1
        case "c":
            scores["c"]! += 1
        default:
            print("Error calculating DISC result")
        }
    }
    
    let biggestScore = scores.max { a, b in a.value < b.value }
    
    let quizResult = QuizBank.shared.quizList[0].results!.first { result in
        result.code == biggestScore?.key
    }
    
    return quizResult!
}
