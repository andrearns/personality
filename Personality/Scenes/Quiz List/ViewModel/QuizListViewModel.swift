//
//  QuizListViewModel.swift
//  Personality
//
//  Created by Thiago Medeiros on 02/12/21.
//

import Foundation
import Combine

class QuizListViewModel: ObservableObject {
    @Published public var quizzes: QuizzesDTO = QuizzesDTO(quizzes: [], count: 0)
    @Published public var popularQuizzes: QuizzesDTO = QuizzesDTO(quizzes: [], count: 0)
    
    private var quizzesService: QuizzesServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(
        quizzes: QuizzesDTO = QuizzesDTO(quizzes: [], count: 0),
        popularQuizzes: QuizzesDTO = QuizzesDTO(quizzes: [], count: 0),
        quizzesService: QuizzesServiceProtocol = QuizzesService()
    ) {
        self.quizzes = quizzes
        self.popularQuizzes = popularQuizzes
        self.quizzesService = quizzesService
    }
    
    public func onAppear() {
        self.getQuizzes()
        self.getPopularQuizzes()
    }
    
    private func getQuizzes() {
        quizzesService.listQuizzes()
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                case .finished: break
                }
            } receiveValue: { [weak self] quizzes in
                print(quizzes)
                self?.quizzes = quizzes
            }
            .store(in: &cancellables)
    }
    
    private func getPopularQuizzes() {
        quizzesService.listPopularQuizzes()
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
            } receiveValue: { [weak self] popularQuizzes in
                print(popularQuizzes)
                self?.popularQuizzes = popularQuizzes
            }
            .store(in: &cancellables)
    }
}
