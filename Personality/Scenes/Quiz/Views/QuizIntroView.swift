import Foundation
import SwiftUI

struct QuizIntroView: View {
    var quiz: QuizModel!
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack {
                    IntroHeader(quiz: quiz)
                        
                    HStack {
                        Text(quiz.longDescription!)
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Text("Possíveis resultados")
                            .font(.system(size: 18, weight: .bold, design: .default))
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(quiz.outputList, id: \.self) { output in
                            OutputCell(output: output)
                        }
                    }.padding()
                }
            }
            VStack {
                Spacer()
                
                NavigationLink(
                    destination:
                        QuizView(
                            quiz: quiz,
                            currentQuestionIndex: 0)
                        )
                {
                    Spacer()
                    Text("Iniciar teste")
                        .bold()
                    Spacer()
                }
                .isDetailLink(false)
                .padding()
                .background(Color(uiColor: UIColor(named: quiz.backgroundColorName)!))
                .cornerRadius(25)
                .foregroundColor(.white)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
        .edgesIgnoringSafeArea(.top)
        .navigationBarItems(trailing: Button(action: {
            print("Share quiz")
        }, label: { Image(systemName: "square.and.arrow.up") }))
    }
}

struct QuizIntroView_Preview: PreviewProvider {
    static var previews: some View {
        QuizIntroView(
            quiz:
                QuizModel(
                    name: "Teste 5",
                    shortDescription: "Descrição curta",
                    durationInMinutes: 5,
                    longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
                    backgroundColorName: "Green",
                    questionList: [
                        QuestionModel(
                            title: "Qual cor você prefere?",
                            answerList: [
                                AnswerModel(text: "Rosa"),
                                AnswerModel(text: "Vermelho"),
                                AnswerModel(text: "Amarelo"),
                                AnswerModel(text: "Azul"),
                            ]
                        ),
                        QuestionModel(
                            title: "Qual cor você prefere?",
                            answerList: [
                                AnswerModel(text: "Rosa"),
                                AnswerModel(text: "Vermelho"),
                                AnswerModel(text: "Amarelo"),
                                AnswerModel(text: "Azul"),
                            ]
                        ),
                        QuestionModel(
                            title: "Qual cor você prefere?",
                            answerList: [
                                AnswerModel(text: "Rosa"),
                                AnswerModel(text: "Vermelho"),
                                AnswerModel(text: "Amarelo"),
                                AnswerModel(text: "Azul"),
                            ]
                        ),
                        QuestionModel(
                            title: "Qual cor você prefere?",
                            answerList: [
                                AnswerModel(text: "Rosa"),
                                AnswerModel(text: "Vermelho"),
                                AnswerModel(text: "Amarelo"),
                                AnswerModel(text: "Azul"),
                            ]
                        )
                    ],
                    outputList: [
                        OutputModel(name: "Sábia", colorName: "Blue"),
                        OutputModel(name: "Doida", colorName: "Pink"),
                        OutputModel(name: "Corajosa", colorName: "Green"),
                        OutputModel(name: "Relax", colorName: "Yellow")
                    ]
                )
        )
        .preferredColorScheme(.dark)
    }
}
