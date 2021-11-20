import Foundation

func generateCreativeTypesResult(answers: [Int : Answer]) -> Result {
    
    var scores: [String : Int] = [
        "a" : 0,
        "b" : 0,
        "c" : 0,
        "d" : 0,
        "e" : 0,
        "f" : 0
    ]
    
    for i in 0..<answers.count {
        switch answers[i]!.score {
        case "a":
            scores["a"]! += 1
        case "b":
            scores["b"]! += 1
        case "c":
            scores["c"]! += 1
        case "d":
            scores["d"]! += 1
        case "e":
            scores["e"]! += 1
        case "f":
            scores["f"]! += 1
        default:
            print("Error calculating Creative Types result")
        }
    }
    
    let resultCode = (scores["a"]! > scores["b"]! ? "a": "b") + (scores["c"]! > scores["d"]! ? "c": "d") + (scores["e"]! > scores["f"]! ? "e": "f")
    
    let quizResult = QuizBank.shared.quizList[1].results.first { result in
        result.code == resultCode
    }
    
    return quizResult!
}
