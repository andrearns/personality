import SwiftUI

struct IntroHeader: View {
    var quiz: QuizModel
    
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
    }
}
