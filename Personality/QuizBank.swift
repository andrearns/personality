import Foundation

struct QuizBank {
    static var shared = QuizBank()
    
    var quizList = [
        Quiz(
            title: "Teste 1",
            shortDescription: "Descrição curta",
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            durationInMinutes: 5,
            colorName: "Orange",
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
        ),
        
        Quiz(
            title: "Teste 2",
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
        ),
        
        Quiz(
            title: "Teste 3",
            shortDescription: "Descrição curta",
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            durationInMinutes: 5,
            colorName: "Pink",
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
        ),
        
        Quiz(
            title: "Teste 4",
            shortDescription: "Descrição curta",
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            durationInMinutes: 5,
            colorName: "Yellow",
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
        ),
        
        Quiz(
            title: "Teste 5",
            shortDescription: "Descrição curta",
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
    ]
}
