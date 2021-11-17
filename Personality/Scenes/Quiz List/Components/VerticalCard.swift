import SwiftUI

struct VerticalCard: View {
    var quiz: QuizModel
    
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
