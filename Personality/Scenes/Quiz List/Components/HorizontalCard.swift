import SwiftUI

struct HorizontalCard: View {
    var quiz: Quiz
    
    var body: some View {
        NavigationLink(destination: QuizIntroView(quiz: quiz)) {
            HStack {
                VStack(alignment: .leading) {
                    Text(quiz.title)
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .black, design: .default))
                        .padding(.bottom, 1)
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
        .background(Color(uiColor: UIColor(named: quiz.colorName)!))
        .cornerRadius(16)
        .padding(.horizontal)
    }
}

struct HorizontalCard_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCard(quiz:
                        Quiz(
                            title: "Teste 5",
                            shortDescription: "Descrição curta",
                            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
                            durationInMinutes: 5,
                            colorName: "Green",
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
                                    colorName: "Blue"
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
                                    colorName: "Pink"
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
                                    colorName: "Yellow"
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
                                    colorName: "Green"
                                ),
                            ]
                        )

        )
    }
}
