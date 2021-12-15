import SwiftUI

struct IntroHeader: View {
    var quiz: Quiz
    
    var body: some View {
        ZStack{
            if quiz.image != nil {
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        Image(quiz.image!)
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
                            Text("\(quiz.estimatedTimeInMinutes) minutos")
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
        .background(Color(uiColor: UIColor(named: quiz.color)!))
    }
}

struct IntroHeader_Previews: PreviewProvider {
    static var previews: some View {
        IntroHeader(quiz:
                        Quiz(
                            title: "tipos de criatividade",
                            image: "creativeTypes",
                            subtitle: "Descrição curta",
                            about: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
                            estimatedTimeInMinutes: 5,
                            color: "Green",
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
                                QuizResult(
                                    label: "Sábia",
                                    about: "kkkkkkkkkk",
                                    code: "ACF",
                                    badge:
                                        Badge(
                                            image_url: "chapeu2",
                                            profileImagesURL: [
                                                .coracaozinho : "X",
                                                .diabinho : "Y",
                                                .estrelinha : "W",
                                                .florzinha : "Z"
                                            ]
                                        ),
                                    color: "Blue"
                                ),
                                QuizResult(
                                    label: "Legal",
                                    about: "kkkkkkkkkk",
                                    code: "ACF",
                                    badge:
                                        Badge(
                                            image_url: "chapeu2",
                                            profileImagesURL: [
                                                .coracaozinho : "X",
                                                .diabinho : "Y",
                                                .estrelinha : "W",
                                                .florzinha : "Z"
                                            ]
                                        ),
                                    color: "Pink"
                                ),
                                QuizResult(
                                    label: "Guru",
                                    about: "kkkkkkkkkk",
                                    code: "ACF",
                                    badge:
                                        Badge(
                                            image_url: "chapeu2",
                                            profileImagesURL: [
                                                .coracaozinho : "X",
                                                .diabinho : "Y",
                                                .estrelinha : "W",
                                                .florzinha : "Z"
                                            ]
                                        ),
                                    color: "Yellow"
                                ),
                                QuizResult(
                                    label: "Raivosa",
                                    about: "kkkkkkkkkk",
                                    code: "ACF",
                                    badge:
                                        Badge(
                                            image_url: "chapeu2",
                                            profileImagesURL: [
                                                .coracaozinho : "X",
                                                .diabinho : "Y",
                                                .estrelinha : "W",
                                                .florzinha : "Z"
                                            ]
                                        ),
                                    color: "Green"
                                ),
                            ]
                        )

        )
    }
}
