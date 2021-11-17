import Foundation

struct QuizBank {
    static var shared = QuizBank()
    
    var quizList = [
        Quiz(
            name: "Teste 1",
            shortDescription: "Descrição curta",
            durationInMinutes: 5,
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            backgroundColorName: "Orange",
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
                        Answer(text: "A"),
                        Answer(text: "B"),
                        Answer(text: "C"),
                        Answer(text: "D"),
                    ]
                ),
                Question(
                    title: "Qual cor você prefere?",
                    answerList: [
                        Answer(text: "Rosa"),
                        Answer(text: "Vermelho"),
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
        ),
        Quiz(
            name: "Teste 2",
            shortDescription: "Descrição curta",
            durationInMinutes: 5,
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            backgroundColorName: "Pink",
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
        ),
        Quiz(
            name: "Teste 3",
            shortDescription: "Descrição curta",
            durationInMinutes: 5,
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            backgroundColorName: "Blue",
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
        ),
        Quiz(
            name: "Teste 4",
            shortDescription: "Descrição curta",
            durationInMinutes: 5,
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            backgroundColorName: "Yellow",
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
        ),
        Quiz(
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
        ),
    ]
}
