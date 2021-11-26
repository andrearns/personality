import SwiftUI

struct VerticalCard: View {
    var quiz: Quiz
    
    var body: some View {
        ZStack {
            Image("backgroundTest")
                .resizable()
            if quiz.imageName != nil {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image(quiz.imageName!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(8)
                            .padding(.top, 60)
                            .padding(.leading, 60)
                    }
                }
            }
            VStack(alignment: .leading) {
                HStack {
                    Text(quiz.title.uppercased())
                        .font(.system(size: 30, weight: .black, design: .default))
                        .padding(.vertical, 5)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                    Spacer()
                }
                HStack {
                    Text(quiz.shortDescription!)
                        .personalityFont(.subheadline, textSize: 12)
                        .foregroundColor(.branco)
                        .padding(.trailing, 40)
                }
                Spacer()
            }
            .padding()
        }
        .frame(width: 200, height: 250, alignment: .leading)
        .background(Color(uiColor: UIColor(named: quiz.colorName)!))
        .cornerRadius(16)
    }
}

struct VerticalCard_Previews: PreviewProvider {
    static var previews: some View {
        VerticalCard(quiz:
                        Quiz(
                            title: "Teste 5",
                            imageName: "IlustraDISK",
                            shortDescription: "Descrição curta Descrição curta Descrição curta",
                            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
                            durationInMinutes: 5,
                            colorName: "Blue",
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
                                            iconImageURL: "chapeu2",
                                            profileImagesURL: [
                                                .coracaozinho : "X",
                                                .diabinho : "Y",
                                                .estrelinha : "W",
                                                .florzinha : "Z"
                                            ]
                                        ),
                                    colorName: "Blue"
                                ),
                                Result(
                                    label: "Legal",
                                    about: "kkkkkkkkkk",
                                    code: "ACF",
                                    badge:
                                        Badge(
                                            iconImageURL: "chapeu2",
                                            profileImagesURL: [
                                                .coracaozinho : "X",
                                                .diabinho : "Y",
                                                .estrelinha : "W",
                                                .florzinha : "Z"
                                            ]
                                        ),
                                    colorName: "Pink"
                                ),
                                Result(
                                    label: "Guru",
                                    about: "kkkkkkkkkk",
                                    code: "ACF",
                                    badge:
                                        Badge(
                                            iconImageURL: "chapeu2",
                                            profileImagesURL: [
                                                .coracaozinho : "X",
                                                .diabinho : "Y",
                                                .estrelinha : "W",
                                                .florzinha : "Z"
                                            ]
                                        ),
                                    colorName: "Yellow"
                                ),
                                Result(
                                    label: "Raivosa",
                                    about: "kkkkkkkkkk",
                                    code: "ACF",
                                    badge:
                                        Badge(
                                            iconImageURL: "chapeu2",
                                            profileImagesURL: [
                                                .coracaozinho : "X",
                                                .diabinho : "Y",
                                                .estrelinha : "W",
                                                .florzinha : "Z"
                                            ]
                                        ),
                                    colorName: "Green"
                                ),
                            ]
                        )
        )
    }
}
