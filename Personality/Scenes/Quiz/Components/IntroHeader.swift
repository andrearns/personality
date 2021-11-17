import SwiftUI

struct IntroHeader: View {
    var quiz: Quiz
    
    var body: some View {
        VStack {
            // Quiz image
            Text(quiz.name)
                .font(.system(size: 28, weight: .bold, design:.default))
                .padding(.bottom, 10)
            HStack {
                Image(systemName: "clock")
                Text("\(quiz.durationInMinutes) minutos")
                    .font(.system(size: 16, weight: .regular, design: .default))
            }
                
        }
        .frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center)
        .background(Color(uiColor: UIColor(named: quiz.backgroundColorName)!))
    }
}

struct IntroHeader_Previews: PreviewProvider {
    static var previews: some View {
        IntroHeader(quiz:
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
