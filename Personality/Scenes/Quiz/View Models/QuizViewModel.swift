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
    @Published var result: Result?
    
    init(quiz: Quiz) {
        self.quiz = quiz
    }
    
    func isFirstQuestion() -> Bool {
        currentQuestionIndex == 0
    }
    
    func isLastQuestion() -> Bool {
        currentQuestionIndex > quiz.questions.count - 1
    }
    
    func previousQuestion() {
        currentQuestionIndex = currentQuestionIndex - 1
        currentQuestion = quiz.questions[currentQuestionIndex]
        currentAnswer = answerDict[currentQuestionIndex]
    }
    
    func getQuestionAnswer() -> [Answer] {
        quiz.questions[currentQuestionIndex].answers
    }
}
