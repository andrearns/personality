//
//  QuizIntroViewModel.swift
//  Personality
//
//  Created by Thiago Medeiros on 08/12/21.
//

import Foundation
import Combine

class QuizIntroViewModel: ObservableObject {
    @Published public var questions: QuestionsDTO = QuestionsDTO(questions: [], count: 0)
    @Published public var results: [QuizResult] = []
    
    private var questionsService: QuestionsServiceProtocol
    private var resultsService: ResultsServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    private var quiz_id: String
    
    init(
        quiz_id: UUID,
        questions: QuestionsDTO = QuestionsDTO(questions: [], count: 0),
        questionsService: QuestionsServiceProtocol = QuestionsService(),
        resultsService: ResultsServiceProtocol = ResultsService()
    ) {
        self.quiz_id = quiz_id.uuidString
        self.questions = questions
        self.questionsService = questionsService
        self.resultsService = resultsService
    }
    
    public func onAppear() {
        self.getQuestions()
        self.getResults()
    }
    
    private func getQuestions() {
        questionsService.listQuestions(quiz_id: quiz_id)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                case .finished: break
                }
            } receiveValue: { [weak self] questions in
                self?.questions = questions
            }
            .store(in: &cancellables)
    }
    
    private func getResults() {
        resultsService.listResults(quiz_id: quiz_id)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                case .finished: break
                }
            } receiveValue: { [weak self] results in
                self?.results = results
            }
            .store(in: &cancellables)
    }
}
