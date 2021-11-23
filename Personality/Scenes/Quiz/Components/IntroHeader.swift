import SwiftUI

struct IntroHeader: View {
    var quiz: Quiz
    
    var body: some View {
        ZStack{
            if quiz.imageName != nil {
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        Image(quiz.imageName!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200)
                            .padding()
                    }
                }
            }
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(quiz.title)
                            .font(.system(size: 40, weight: .black, design:.default))
                            .padding(.bottom, 10)
                            .padding(.top, 40)
                        HStack {
                            Image(systemName: "clock")
                            Text("\(quiz.durationInMinutes) minutos")
                                .font(.system(size: 16, weight: .regular, design: .default))
                            Spacer()
                        }
                    }
                    Spacer()
                }
                .padding(32)
                    
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 300)
        .background(Color(uiColor: UIColor(named: quiz.colorName)!))
    }
}

struct IntroHeader_Previews: PreviewProvider {
    static var previews: some View {
        IntroHeader(quiz:
                        Quiz(
                            title: "tipos de criatividade",
                            imageName: "creativeTypes",
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
