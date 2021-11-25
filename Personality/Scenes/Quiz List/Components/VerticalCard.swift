import SwiftUI

struct VerticalCard: View {
    var quiz: Quiz
    
    var body: some View {
<<<<<<< HEAD
        ZStack {
            Image("backgroundTest")
                .resizable()
            if quiz.imageName != nil {
                VStack {
                    Spacer()
=======
        NavigationLink(destination: QuizIntroView(quiz: quiz)) {
            ZStack {
                Image("backgroundTest")
                    .resizable()
                if quiz.image != nil {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Image(quiz.image!)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(8)
                                .padding(.top, 60)
                                .padding(.leading, 60)
                        }
                    }
                }
                VStack(alignment: .leading) {
>>>>>>> abee6af (feat: QuizzesRepository)
                    HStack {
                        Spacer()
                        Image(quiz.imageName!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(8)
                            .padding(.top, 60)
                            .padding(.leading, 60)
                    }
<<<<<<< HEAD
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
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.branco)
                        .padding(.trailing, 40)
                        .multilineTextAlignment(.leading)
=======
                    HStack {
                        Text(quiz.subtitle!)
                            .personalityFont(.subheadline, textSize: 12)
                            .foregroundColor(.branco)
                            .padding(.trailing, 40)
                    }
>>>>>>> abee6af (feat: QuizzesRepository)
                    Spacer()
                }
                Spacer()
            }
<<<<<<< HEAD
            .padding()
=======
            .frame(width: 200, height: 250, alignment: .leading)
            .background(Color(uiColor: UIColor(named: quiz.color)!))
            .cornerRadius(16)
>>>>>>> abee6af (feat: QuizzesRepository)
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
                                    color: "Blue"
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
                                    color: "Pink"
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
                                    color: "Yellow"
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
                                    color: "Green"
                                ),
                            ]
                        )
        )
    }
}
