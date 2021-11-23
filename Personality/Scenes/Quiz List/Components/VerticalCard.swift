import SwiftUI

struct VerticalCard: View {
    var quiz: Quiz
    
    var body: some View {
        NavigationLink(destination: QuizIntroView(quiz: quiz)) {
            ZStack {
                if quiz.imageName != nil {
                    VStack {
                        Spacer()
                        HStack {
                            Image(quiz.imageName!)
                                .frame(maxHeight: 75)
                        }
                    }
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text(quiz.title)
                            .font(.system(size: 26, weight: .black, design: .default))
                            .padding(.vertical)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                        Spacer()
                    }
                    Spacer()
                }
            }
            .padding()
            .frame(width: 200, height: 250, alignment: .leading)
            .background(Color(uiColor: UIColor(named: quiz.colorName)!))
            .cornerRadius(16)
        }
    }
}

struct VerticalCard_Previews: PreviewProvider {
    static var previews: some View {
        VerticalCard(quiz:
                        Quiz(
                            title: "Teste 5",
                            imageName: "disc",
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
