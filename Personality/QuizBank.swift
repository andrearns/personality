import Foundation

struct QuizBank {
    static var shared = QuizBank()
    
    var quizList = [
        QuizModel(
            name: "Teste 1",
            shortDescription: "Descrição curta",
            durationInMinutes: 5,
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            backgroundColorName: "Orange",
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
                        AnswerModel(text: "A"),
                        AnswerModel(text: "B"),
                        AnswerModel(text: "C"),
                        AnswerModel(text: "D"),
                    ]
                ),
                QuestionModel(
                    title: "Qual cor você prefere?",
                    answerList: [
                        AnswerModel(text: "Rosa"),
                        AnswerModel(text: "Vermelho"),
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
        ),
        QuizModel(
            name: "Teste 2",
            shortDescription: "Descrição curta",
            durationInMinutes: 5,
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            backgroundColorName: "Pink",
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
        ),
        QuizModel(
            name: "Teste 3",
            shortDescription: "Descrição curta",
            durationInMinutes: 5,
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            backgroundColorName: "Blue",
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
        ),
        QuizModel(
            name: "Teste 4",
            shortDescription: "Descrição curta",
            durationInMinutes: 5,
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            backgroundColorName: "Yellow",
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
        ),
        QuizModel(
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
        ),
    ]
}
