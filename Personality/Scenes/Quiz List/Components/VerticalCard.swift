import SwiftUI

struct VerticalCard: View {
    var quiz: Quiz
    
    var body: some View {
        NavigationLink(destination: QuizIntroView(quiz: quiz)) {
            VStack(alignment: .leading) {
                Text(quiz.name)
                    .font(.system(size: 28, weight: .bold, design: .default))
                    .padding(.bottom)
                    .foregroundColor(.white)
                Text(quiz.shortDescription!)
                    .foregroundColor(.white)
            }
            .padding()
            .frame(width: 200, height: 250, alignment: .leading)
            .background(Color(uiColor: UIColor(named: quiz.backgroundColorName)!))
            .cornerRadius(16)
        }
    }
}

struct VerticalCard_Previews: PreviewProvider {
    static var previews: some View {
        VerticalCard(quiz:
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
    }
}
