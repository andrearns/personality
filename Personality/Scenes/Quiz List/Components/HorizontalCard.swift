import SwiftUI

struct HorizontalCard: View {
    var quiz: QuizModel
    
    var body: some View {
        NavigationLink(destination: QuizIntroView(quiz: quiz)) {
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

struct HorizontalCard_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCard(quiz: QuizModel(
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
