import Foundation

struct QuizBank {
    static var shared = QuizBank()
    
    var quizList = [
        Quiz(
            title: "DISC",
            shortDescription: "Descrição curta",
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            durationInMinutes: 5,
            colorName: "Orange",
            questions: [
                Question(
                    label: "Eu sou uma pessoa...",
                    answers: [
                        Answer(label: "Carismática e otimista", score: "i"),
                        Answer(label: "Acolhedora e Paciente", score: "s"),
                        Answer(label: "Detalhista e organizada", score: "c"),
                        Answer(label: "Ousada e direta", score: "d"),
                    ]
                ),
                Question(
                    label: "Prefiro focar...",
                    answers: [
                        Answer(label: "Em resultados", score: "d"),
                        Answer(label: "Em planejamento", score: "s"),
                        Answer(label: "Nas pessoas ao meu redor", score: "i"),
                        Answer(label: "Nas tarefas que precisam ser feitas", score: "c"),
                    ]
                ),
                Question(
                    label: "Eu gosto de...",
                    answers: [
                        Answer(label: "Tranquilidade", score: "s"),
                        Answer(label: "Assumir riscos", score: "d"),
                        Answer(label: "Mudanças", score: "i"),
                        Answer(label: "Segurança", score: "c"),
                    ]
                ),
                Question(
                    label: "Eu sou uma pessoa...",
                    answers: [
                        Answer(label: "Curiosa", score: "i"),
                        Answer(label: "Prestativa", score: "s"),
                        Answer(label: "Conservadora", score: "c"),
                        Answer(label: "Prática", score: "d"),
                    ]
                )
            ],
            results: [
                Result(
                    label: "Dominância",
                    about: "Quem tem alto perfil de dominância, tende a tomar decisões mais rapidamente, é motivados por assumir riscos, busca objetivos com senso de urgência e prefere fazer as coisas da suamaneira. Seu lema é \"fazer rápido\". Tome cuidado para não se precipitar e buscar o caminho mais fácil. Além disso, fique atento para manter o bom relacionamento com o seu time.",
                    code: "d",
                    badge:
                        Badge(
                            imageURL: "",
                            label: ""
                        ),
                    colorName: "Blue"
                ),
                Result(
                    label: "Influência",
                    about: "kkkkkkkkkk",
                    code: "i",
                    badge:
                        Badge(
                            imageURL: "",
                            label: ""
                        ),
                    colorName: "Pink"
                ),
                Result(
                    label: "Conformidade",
                    about: "kkkkkkkkkk",
                    code: "c",
                    badge:
                        Badge(
                            imageURL: "",
                            label: ""
                        ),
                    colorName: "Yellow"
                ),
                Result(
                    label: "Estabilidade",
                    about: "kkkkkkkkkk",
                    code: "s",
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
            title: "Tipos de criatividade",
            shortDescription: "Descrição curta",
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            durationInMinutes: 5,
            colorName: "Green",
            questions: [
                Question(
                    label: "Are you a ruler or a scribble?",
                    answers: [
                        Answer(label: "Ruler", score: "c"),
                        Answer(label: "Scribble", score: "d"),
                    ]
                ),
                Question(
                    label: "When travelling, you always need a...",
                    answers: [
                        Answer(label: "Destination", score: "c"),
                        Answer(label: "Direction", score: "d"),
                    ]
                ),
                Question(
                    label: "My creativity is more",
                    answers: [
                        Answer(label: "Method", score: "c"),
                        Answer(label: "Madness", score: "d"),
                    ]
                ),
                Question(
                    label: "Everything is connected",
                    answers: [
                        Answer(label: "True", score: "d"),
                        Answer(label: "False", score: "c"),
                    ]
                ),
                Question(
                    label: "I tend to see life through the lens of",
                    answers: [
                        Answer(label: "Systems", score: "c"),
                        Answer(label: "Stories", score: "d"),
                    ]
                ),
                Question(
                    label: "My door is...",
                    answers: [
                        Answer(label: "Wide open", score: "b"),
                        Answer(label: "Usually closed", score: "a"),
                    ]
                ),
                Question(
                    label: "I’d rather talk to",
                    answers: [
                        Answer(label: "Someone I just met", score: "b"),
                        Answer(label: "Myself", score: "a"),
                    ]
                ),
                Question(
                    label: "Are you a fortune cookie or a birthday cake?",
                    answers: [
                        Answer(label: "Fortune cookie", score: "a"),
                        Answer(label: "Birthday cake", score: "b"),
                    ]
                ),
                Question(
                    label: "I’d rather be in",
                    answers: [
                        Answer(label: "A cocoon", score: "a"),
                        Answer(label: "A beehive", score: "b"),
                    ]
                ),
                Question(
                    label: "I tend to go",
                    answers: [
                        Answer(label: "Over the top", score: "b"),
                        Answer(label: "Under the radar", score: "a"),
                    ]
                ),
                Question(
                    label: "Updates are ready to install",
                    answers: [
                        Answer(label: "Restart now", score: "f"),
                        Answer(label: "Remind me tomorrow", score: "e"),
                    ]
                ),
                Question(
                    label: "My brain spends more time",
                    answers: [
                        Answer(label: "In the zone", score: "f"),
                        Answer(label: "Zoning out", score: "e"),
                    ]
                ),
                Question(
                    label: "Secret weapon?",
                    answers: [
                        Answer(label: "Curiosity", score: "e"),
                        Answer(label: "Endurance", score: "f"),
                    ]
                ),
                Question(
                    label: "Dip your toes or dive in head first?",
                    answers: [
                        Answer(label: "Dip", score: "e"),
                        Answer(label: "Dive", score: "f"),
                    ]
                ),
                Question(
                    label: "My first question is always",
                    answers: [
                        Answer(label: "Why", score: "e"),
                        Answer(label: "How", score: "f"),
                    ]
                )
            ],
            results: [
                Result(
                    label: "Artista",
                    about: "kkkkkkkkkk",
                    code: "adf",
                    badge:
                        Badge(
                            imageURL: "",
                            label: ""
                        ),
                    colorName: "Blue"
                ),
                Result(
                    label: "Pensadora",
                    about: "kkkkkkkkkk",
                    code: "ace",
                    badge:
                        Badge(
                            imageURL: "",
                            label: ""
                        ),
                    colorName: "Pink"
                ),
                Result(
                    label: "Aventureira",
                    about: "kkkkkkkkkk",
                    code: "bdf",
                    badge:
                        Badge(
                            imageURL: "",
                            label: ""
                        ),
                    colorName: "Yellow"
                ),
                Result(
                    label: "Maker",
                    about: "kkkkkkkkkk",
                    code: "acf",
                    badge:
                        Badge(
                            imageURL: "",
                            label: ""
                        ),
                    colorName: "Green"
                ),
                Result(
                    label: "Producer",
                    about: "kkkkkkkkkk",
                    code: "bcf",
                    badge:
                        Badge(
                            imageURL: "",
                            label: ""
                        ),
                    colorName: "Blue"
                ),
                Result(
                    label: "Dreamer",
                    about: "kkkkkkkkkk",
                    code: "ade",
                    badge:
                        Badge(
                            imageURL: "",
                            label: ""
                        ),
                    colorName: "Pink"
                ),
                Result(
                    label: "Innovator",
                    about: "kkkkkkkkkk",
                    code: "bce",
                    badge:
                        Badge(
                            imageURL: "",
                            label: ""
                        ),
                    colorName: "Yellow"
                ),
                Result(
                    label: "Visionary",
                    about: "kkkkkkkkkk",
                    code: "bde",
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
