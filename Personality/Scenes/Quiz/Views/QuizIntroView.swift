import Foundation
import SwiftUI

struct QuizIntroView: View {
    
    var quiz: Quiz!
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack {
                    HStack {
                        // Quiz image
                            
                    }.frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center)
                        .background(Color(uiColor: UIColor(named: quiz.backgroundColorName)!))
                        
                    HStack {
                        Text(quiz.name)
                            .font(.system(size: 28, weight: .bold, design:.default))
                        Spacer()
                    }.padding(.vertical, 10)
                        .padding(.horizontal)
                        
                    HStack {
                        Text(quiz.longDescription!)
                        Spacer()
                    }
                    .padding(.horizontal)
                }
            }
            VStack {
                Spacer()
                
                NavigationLink(destination: QuizView(quiz: quiz, currentQuestionIndex: 0)) {
                    Spacer()
                    Text("Iniciar teste")
                        .bold()
                    Spacer()
                }
                .padding()
                .background(Color(uiColor: UIColor(named: quiz.backgroundColorName)!))
                .cornerRadius(25)
                .foregroundColor(.white)
            }
            .padding()
        }.navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.top)
    }
}

struct QuizIntroView_Preview: PreviewProvider {
    static var previews: some View {
        QuizIntroView(
            quiz: Quiz(
                name: "Teste 1",
                shortDescription: "Descrição curta",
                longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
                backgroundColorName: "Orange",
                questionList: [
                    Question(
                        title: "Qual cor você prefere?",
                        answerList: [
                            Answer(text: "Rosa"),
                            Answer(text: "Vermelho"),
                            Answer(text: "Amarelo"),
                            Answer(text: "Azul"),
                        ]
                    ),
                    Question(
                        title: "Qual cor você prefere?",
                        answerList: [
                            Answer(text: "Rosa"),
                            Answer(text: "Vermelho"),
                            Answer(text: "Amarelo"),
                            Answer(text: "Azul"),
                        ]
                    ),
                    Question(
                        title: "Qual cor você prefere?",
                        answerList: [
                            Answer(text: "Rosa"),
                            Answer(text: "Vermelho"),
                            Answer(text: "Amarelo"),
                            Answer(text: "Azul"),
                        ]
                    ),
                    Question(
                        title: "Qual cor você prefere?",
                        answerList: [
                            Answer(text: "Rosa"),
                            Answer(text: "Vermelho"),
                            Answer(text: "Amarelo"),
                            Answer(text: "Azul"),
                        ]
                    )
                ]
            )
        )
        .preferredColorScheme(.dark)
    }
}
