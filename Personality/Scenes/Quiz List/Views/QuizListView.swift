import SwiftUI
import CoreData

var firstQuizList: [Quiz] = [
    Quiz(
        name: "Teste 1",
        shortDescription: "Descrição curta",
        durationInMinutes: 5,
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
                    Answer(text: "A"),
                    Answer(text: "B"),
                    Answer(text: "C"),
                    Answer(text: "D"),
                ]
            ),
            Question(
                title: "Qual cor você prefere?",
                answerList: [
                    Answer(text: "Rosa"),
                    Answer(text: "Vermelho"),
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
    ),
    Quiz(
        name: "Teste 2",
        shortDescription: "Descrição curta",
        durationInMinutes: 5,
        longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
        backgroundColorName: "Pink",
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
    ),
]
var secondQuizList: [Quiz] = [
    Quiz(
        name: "Teste 3",
        shortDescription: "Descrição curta",
        durationInMinutes: 5,
        longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
        backgroundColorName: "Blue",
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
    ),
    Quiz(
        name: "Teste 4",
        shortDescription: "Descrição curta",
        durationInMinutes: 5,
        longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
        backgroundColorName: "Yellow",
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
    ),
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
    ),
]

struct QuizListView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        Text("Olá, Fulana!")
                            .bold()
                            .fontWeight(.bold)
                            .font(.system(size: 30, weight: .bold, design: .default))
                        Spacer()
                    }.padding()
                    
                    HStack {
                        Text("Em alta")
                            .font(.system(size: 20, weight: .medium, design: .default))
                        Spacer()
                    }.padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            NavigationLink(destination: QuizIntroView(quiz: firstQuizList[0])) {
                                VStack(alignment: .leading) {
                                    Text(firstQuizList[0].name)
                                        .font(.system(size: 28, weight: .bold, design: .default))
                                        .padding(.bottom)
                                        .foregroundColor(.white)
                                    Text(firstQuizList[0].shortDescription!)
                                        .foregroundColor(.white)
                                }
                                .padding()
                                .frame(width: 200, height: 250, alignment: .leading)
                                .background(Color(uiColor: UIColor(named: firstQuizList[0].backgroundColorName)!))
                                .cornerRadius(16)
                            }
                            NavigationLink(destination: QuizIntroView(quiz: firstQuizList[1])) {
                                VStack(alignment: .leading) {
                                    Text(firstQuizList[1].name)
                                        .font(.system(size: 28, weight: .bold, design: .default))
                                        .padding(.bottom)
                                        .foregroundColor(.white)
                                    Text(firstQuizList[1].shortDescription!)
                                        .foregroundColor(.white)
                                }
                                .padding()
                                .frame(width: 200, height: 250, alignment: .leading)
                                .background(Color(uiColor: UIColor(named: firstQuizList[1].backgroundColorName)!))
                                .cornerRadius(16)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                    
                    HStack {
                        Text("Encontre seu teste ideal")
                            .font(.system(size: 20, weight: .medium, design: .default))
                        Spacer()
                    }.padding(.horizontal)
                    
                    VStack {
                        ForEach(secondQuizList) { quiz in
                            NavigationLink(destination:QuizIntroView(quiz: quiz)) {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(quiz.name)
                                            .foregroundColor(.white)
                                            .font(.system(size: 21, weight: .bold, design: .default))
                                            .padding(.bottom, 5)
                                        Text(quiz.shortDescription!)
                                            .foregroundColor(.white)
                                    }
                                    .padding()
                                    .cornerRadius(16)
                                    
                                    Spacer()
                                    
                                    HStack {
                                        Text("Icon")
                                    }
                                    .frame(width: 50, height: 50, alignment: .center)
                                    .background(Color(.systemPink))
                                    .cornerRadius(25)
                                    .padding()
                                    .foregroundColor(.white)
                                }
                            }
                            .frame(height: 95, alignment: .center)
                            .background(Color(uiColor: UIColor(named: quiz.backgroundColorName)!))
                            .cornerRadius(16)
                            .padding(.horizontal)
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
        }
        .accentColor(.white)
    }
}

struct QuizList_Previews: PreviewProvider {
    static var previews: some View {
        QuizListView()
            .environment(\.colorScheme, .dark)
    }
}
