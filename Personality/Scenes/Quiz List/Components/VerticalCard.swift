import SwiftUI

struct VerticalCard: View {
    var quiz: Quiz
    
    var body: some View {
        ZStack {
            Image("backgroundTest")
                .resizable()
            if let image_url = quiz.image_url, let url = URL(string: image_url) {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        CachedAsyncImage(url: url) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } placeholder: {
                            ProgressView()
                        }
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
                    Text(quiz.subtitle!)
                        .personalityFont(.subheadline, textSize: 12)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.branco)
                        .padding(.trailing, 40)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
            }
            .padding()
        }
        .frame(width: 200, height: 250, alignment: .leading)
        .background(Color(uiColor: UIColor(named: quiz.color)!))
        .cornerRadius(16)
    }
}

struct VerticalCard_Previews: PreviewProvider {
    static var previews: some View {
        VerticalCard(quiz:
                        Quiz(
                            title: "Teste 5",
                            image: "IlustraDISK",
                            subtitle: "Descrição curta Descrição curta Descrição curta",
                            about: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
                            estimatedTimeInMinutes: 5,
                            color: "Blue",
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
