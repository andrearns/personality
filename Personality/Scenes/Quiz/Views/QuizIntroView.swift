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
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    IntroHeader(quiz: quiz)
                        
                    HStack {
                        Text(quiz.about!)
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
                        ForEach(quiz.results ?? []) { result in
                            OutputCell(result: result)
                        }
                    }.padding()
                }
                .padding(.bottom, 80)
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
                .background(Color(uiColor: UIColor(named: quiz.color)!))
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
        .statusBar(hidden: true)
    }
}

struct QuizIntroView_Preview: PreviewProvider {
    static var previews: some View {
        QuizIntroView(
            quiz:
                Quiz(
                    title: "Teste 5",
                    subtitle: "Descrição curta",
                    about: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
                    estimatedTimeInMinutes: 5,
                    color: "Green",
                    questions: [
                        Question(
                            label: "Qual cor você prefere?",
                            answers: [
                                Answer(label: "Rosa", score: "A"),
                                Answer(label: "Vermelho", score: "B"),
                                Answer(label: "Amarelo", score: "C"),
                                Answer(label: "Azul", score: "D"),
                            ]
                        ),
                        Question(
                            label: "Qual cor você prefere?",
                            answers: [
                                Answer(label: "Rosa", score: "A"),
                                Answer(label: "Vermelho", score: "B"),
                                Answer(label: "Amarelo", score: "C"),
                                Answer(label: "Azul", score: "D"),
                            ]
                        ),
                        Question(
                            label: "Qual cor você prefere?",
                            answers: [
                                Answer(label: "Rosa", score: "A"),
                                Answer(label: "Vermelho", score: "B"),
                                Answer(label: "Amarelo", score: "C"),
                                Answer(label: "Azul", score: "D"),
                            ]
                        ),
                        Question(
                            label: "Qual cor você prefere?",
                            answers: [
                                Answer(label: "Rosa", score: "A"),
                                Answer(label: "Vermelho", score: "B"),
                                Answer(label: "Amarelo", score: "C"),
                                Answer(label: "Azul", score: "D"),
                            ]
                        )
                    ],
                    results: [
                        Result(
                            label: "Sábia",
                            about: "kkkkkkkkkk",
                            code: "ACF",
                            badge:
                                Badge(
                                    imageURL: "",
                                    label: ""
                                ),
                            color: "Blue"
                        ),
                        Result(
                            label: "Legal",
                            about: "kkkkkkkkkk",
                            code: "ACF",
                            badge:
                                Badge(
                                    imageURL: "",
                                    label: ""
                                ),
                            color: "Pink"
                        ),
                        Result(
                            label: "Guru",
                            about: "kkkkkkkkkk",
                            code: "ACF",
                            badge:
                                Badge(
                                    imageURL: "",
                                    label: ""
                                ),
                            color: "Yellow"
                        ),
                        Result(
                            label: "Raivosa",
                            about: "kkkkkkkkkk",
                            code: "ACF",
                            badge:
                                Badge(
                                    imageURL: "",
                                    label: ""
                                ),
                            color: "Green"
                        ),
                    ]
                )

        )
        .preferredColorScheme(.dark)
    }
}
