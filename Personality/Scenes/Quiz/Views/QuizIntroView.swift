import Foundation
import SwiftUI

struct QuizIntroView: View {
    private var quiz: Quiz
    @ObservedObject var viewModel: QuizIntroViewModel
    
    init(quiz: Quiz) {
        self.quiz = quiz
        self.viewModel = QuizIntroViewModel(quiz_id: quiz.id)
    }
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    IntroHeader(quiz: quiz)
                        
                    HStack {
                        Text(quiz.about!)
                        Spacer()
                    }
                    .padding()
                    
                    LeftTitle(text: "Possíveis resultados")
                        .padding(.top)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(viewModel.results) { result in
                            OutputCell(result: result)
                        }
                    }.padding()
                }
                .padding(.bottom, 80)
            }
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    NavigationLink(destination: QuizView(quiz: quiz, questions: viewModel.questions.questions, results: viewModel.results)) {
                        RightButtonStuff(title: "Iniciar      ", systemImageName: "arrow.right", textColor: Color.preto)
                    }
                }
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
        .edgesIgnoringSafeArea(.top)
        .background(Color.preto.edgesIgnoringSafeArea(.all))
        .onAppear {
            viewModel.onAppear()
        }
//        .navigationBarItems(trailing: Button(action: {
//            print("Share quiz")
//        }, label: {
//            Image(systemName: "square.and.arrow.up")
//                .font(.system(size: 18, weight: .semibold, design: .default))
//        }))
    }
}

struct QuizIntroView_Preview: PreviewProvider {
    static var previews: some View {
        QuizIntroView(quiz: QuizBank.shared.quizList[0])
            .preferredColorScheme(.dark)
    }
}
