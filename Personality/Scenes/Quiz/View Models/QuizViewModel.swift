//
//  QuizViewModel.swift
//  Personality
//
//  Created by André Arns on 27/11/21.
//

import Foundation
import Combine

class QuizViewModel: ObservableObject {
    
    @Published var quiz: Quiz
    @Published var questions: [Question]
    @Published var results: [QuizResult]
    @Published var currentQuestion: Question?
    @Published var currentQuestionIndex = 0
    @Published var answerDict: [Int : Answer] = [:]
    @Published var currentAnswer: Answer? = nil
    @Published var result: QuizResult!
    
    private var userResultsService: UserResultsServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(quiz: Quiz, questions: [Question], results: [QuizResult], userResultsService: UserResultsServiceProtocol = UserResultsService()) {
        self.quiz = quiz
        self.questions = questions
        self.results = results
        self.userResultsService = userResultsService
    }
    
    func isFirstQuestion() -> Bool {
        currentQuestionIndex == 0
    }
    
    func isLastQuestion() -> Bool {
        currentQuestionIndex == questions.count - 1
    }
    
    func previousQuestion() {
        currentQuestionIndex = currentQuestionIndex - 1
        currentQuestion = questions[currentQuestionIndex]
        currentAnswer = answerDict[currentQuestionIndex]
    }
    
    func questionsCount() -> Int {
        questions.count
    }
    
    func getQuestionAnswers() -> [Answer] {
        questions[currentQuestionIndex].answers
    }
    
    func currentQuestionTitle() -> String {
        "\(currentQuestionIndex + 1). \(questions[currentQuestionIndex].label)"
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
        currentQuestion = questions[currentQuestionIndex]
        currentAnswer = nil
    }
    
    func generateResult() {
        switch quiz.title {
        case "DISK ME":
            result = generateDISCResult(results: results, answers: answerDict)
        case "Tipos de criatividade":
            result = generateCreativeTypesResult(results: results, answers: answerDict)
        default:
            print("There is no functions to generate a result for this quiz")
        }
    }
    
    func getUserResult() -> UserResult? {
        guard let result = self.result else { return nil }
        return UserResult(result: result, isPrivate: false)
    }
    
    func onAppear() {
        createUserResult()
    }
    
    private func createUserResult() {
        guard let userResult = self.getUserResult() else { return }
        userResultsService.createUserResult(with: userResult)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                    if let jsonData = error.jsonPayload {
                        print(jsonData)
                    }
                case .finished: break
                }
            } receiveValue: { result in
                print(result)
            }
            .store(in: &cancellables)
            
    }
}
