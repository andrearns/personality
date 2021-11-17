import SwiftUI

struct HorizontalCard: View {
    var quiz: Quiz
    
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
        HorizontalCard(quiz: Quiz(
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
