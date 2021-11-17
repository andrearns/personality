import Foundation
import SwiftUI

struct QuizIntroView: View {
    var quiz: Quiz!
    
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
                Quiz(
                    name: "Teste 5",
                    shortDescription: "Descrição curta",
                    durationInMinutes: 5,
                    longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
                    backgroundColorName: "Green",
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
                    ],
                    outputList: [
                        Output(name: "Sábia", colorName: "Blue"),
                        Output(name: "Doida", colorName: "Pink"),
                        Output(name: "Corajosa", colorName: "Green"),
                        Output(name: "Relax", colorName: "Yellow")
                    ]
                )
        )
        .preferredColorScheme(.dark)
    }
}
