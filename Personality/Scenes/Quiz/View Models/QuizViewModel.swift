//
//  QuizViewModel.swift
//  Personality
//
//  Created by André Arns on 27/11/21.
//

import Foundation

class QuizViewModel: ObservableObject {
    
    @Published var quiz: Quiz
    @Published var currentQuestion: Question?
    @Published var currentQuestionIndex = 0
    @Published var answerDict: [Int : Answer] = [:]
    @Published var currentAnswer: Answer? = nil
    @Published var result: Result!
    
    init(quiz: Quiz) {
        self.quiz = quiz
    }
    
    func isFirstQuestion() -> Bool {
        currentQuestionIndex == 0
    }
    
    func isLastQuestion() -> Bool {
        currentQuestionIndex == quiz.questions.count - 1
    }
    
    func previousQuestion() {
        currentQuestionIndex = currentQuestionIndex - 1
        currentQuestion = quiz.questions[currentQuestionIndex]
        currentAnswer = answerDict[currentQuestionIndex]
    }
    
    func questionsCount() -> Int {
        quiz.questions.count
    }
    
    func getQuestionAnswers() -> [Answer] {
        quiz.questions[currentQuestionIndex].answers
    }
    
    func currentQuestionTitle() -> String {
        "\(currentQuestionIndex + 1). \(quiz.questions[currentQuestionIndex].label)"
    }
    
    func isCurrentAnswer(_ answer: Answer) -> Bool {
        currentAnswer == answer
    }

    func selectAnswer(_ answer: Answer) {
        currentAnswer = answer
        answerDict[currentQuestionIndex] = currentAnswer
    }
    
    func nextQuestion() {
        currentQuestionIndex += 1
        currentQuestion = quiz.questions[currentQuestionIndex]
        currentAnswer = nil
    }
    
    func generateResult() -> UserResult {
        switch quiz.title {
        case "DISK ME":
            result = generateDISCResult(answers: answerDict)
        case "Creative \nTypes":
            result = generateCreativeTypesResult(answers: answerDict)
        default:
            print("There is no functions to generate a result for this quiz")
        }
        
        return UserResult(result: result, isPrivate: false)
    }
}
