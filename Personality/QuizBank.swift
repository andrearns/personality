import Foundation

struct QuizBank {
    static var shared = QuizBank()
    
    var quizList = [
        Quiz(
            title: "DISK ME",
            imageName: "IlustraDISK",
            shortDescription: "Dominância, influência, conformidade ou estabilidade?",
            longDescription: "Com o teste DISC você consegue entender melhor suas habilidades e limitações, pontos fortes e fracos. Vamo lá?",
            durationInMinutes: 5,
            colorName: "Blue",
            questions: [
                Question(
                    label: "Eu sou uma pessoa...",
                    answers: [
                        Answer(label: "Carisma em pessoa", score: "i"),
                        Answer(label: "Poço de paciência ", score: "s"),
                        Answer(label: "Organizadah", score: "c"),
                        Answer(label: "Ousada, não levo desaforo pra casa", score: "d"),
                    ]
                ),
                Question(
                    label: "Prefiro focar...",
                    answers: [
                        Answer(label: "Em resultados!!!", score: "d"),
                        Answer(label: "Em planejar tudinho", score: "s"),
                        Answer(label: "Nas fofocas ao redor ", score: "i"),
                        Answer(label: "No que precisa ser feito", score: "c"),
                    ]
                ),
                Question(
                    label: "Eu gosto de...",
                    answers: [
                        Answer(label: "Ficar de boa", score: "s"),
                        Answer(label: "Me arriscar", score: "d"),
                        Answer(label: "Ser uma metamorfose ambulante", score: "i"),
                        Answer(label: "Segurança", score: "c"),
                    ]
                ),
                Question(
                    label: "Eu sou uma pessoa...",
                    answers: [
                        Answer(label: "Curiosa", score: "i"),
                        Answer(label: "Parceirassa", score: "s"),
                        Answer(label: "Conservadora", score: "c"),
                        Answer(label: "Prática!", score: "d"),
                    ]
                ),
                Question(
                    label: "Eu sou uma pessoa...",
                    answers: [
                        Answer(label: "Com muitos questionamentos", score: "d"),
                        Answer(label: "Compreensiva", score: "s"),
                        Answer(label: "Manipuladora", score: "i"),
                        Answer(label: "Prodígio", score: "c"),
                    ]
                ),
                Question(
                    label: "Eu sou uma pessoa...",
                    answers: [
                        Answer(label: "Que nada me abala ", score: "d"),
                        Answer(label: "Que deixa acontecer naturalmente", score: "i"),
                        Answer(label: "Cuidadosa", score: "s"),
                        Answer(label: "Previsível", score: "c"),
                    ]
                ),
                Question(
                    label: "Eu gosto de...",
                    answers: [
                        Answer(label: "Dar ordens", score: "i"),
                        Answer(label: "Controlar tudo e todos", score: "c"),
                        Answer(label: "Coletividade, tudo é de todo mundo", score: "s"),
                        Answer(label: "Agir sozinha, sem tempo irmão", score: "d"),
                    ]
                ),
                Question(
                    label: "Eu prefiro...",
                    answers: [
                        Answer(label: "Fazer o que precisa ser feito", score: "i"),
                        Answer(label: "Trabalhar em grupo", score: "s"),
                        Answer(label: "Fazer do meu jeito", score: "d"),
                        Answer(label: "Que tudo fique perfeito", score: "c"),
                    ]
                ),
                Question(
                    label: "Quando tenho uma ideia...",
                    answers: [
                        Answer(label: "Enxergo problema até onde não tem", score: "c"),
                        Answer(label: "O céu é o limite", score: "i"),
                        Answer(label: "Meto o loko", score: "d"),
                        Answer(label: "Planejo tudo", score: "s"),
                    ]
                ),
                Question(
                    label: "Eu acredito que...",
                    answers: [
                        Answer(label: "Feito é melhor que perfeito", score: "d"),
                        Answer(label: "Se não for pra ser um arraso, melhor nem começar", score: "c"),
                        Answer(label: "As coisas mudam e tá tudo bem", score: "i"),
                        Answer(label: "Paciência é TUDO", score: "s"),
                    ]
                ),
                Question(
                    label: "Minha opinião sobre mudanças é que...",
                    answers: [
                        Answer(label: "São necessárias", score: "i"),
                        Answer(label: "Prefiro manter a rotina", score: "s"),
                        Answer(label: "Aceito, desde que não me prejudique", score: "d"),
                        Answer(label: "Aceito, desde que não me irrite", score: "c"),
                    ]
                ),
                Question(
                    label: "Para conseguir obter bons resultados é preciso...",
                    answers: [
                        Answer(label: "Fazer acontecer", score: "d"),
                        Answer(label: "Ter contatinhos", score: "i"),
                        Answer(label: "Ser famoso no instagram", score: "s"),
                        Answer(label: "Conquistar pela qualidade", score: "c"),
                    ]
                ),
                Question(
                    label: "Eu penso que...",
                    answers: [
                        Answer(label: "É melhor cuidado do que arrependimento", score: "c"),
                        Answer(label: "Duas cabeças pensam melhor do que uma", score: "s"),
                        Answer(label: "Se não sabe brincar, não desce pro play", score: "d"),
                        Answer(label: "Não é fácil socializar", score: "i"),
                    ]
                ),
                Question(
                    label: "Eu sou uma pessoa...",
                    answers: [
                        Answer(label: "Competitiva", score: "d"),
                        Answer(label: "Um doce", score: "s"),
                        Answer(label: "Estrategista", score: "c"),
                        Answer(label: "Distraída", score: "i"),
                    ]
                )
            ],
            results: [
                Result(
                    label: "Dominância",
                    about: "Ousado, Questionador & Autosuficiente \n Quem tem o perfil de dominância, tende a meter o loko, e é motivado pelo perigo, quer tudo pra ontem e prefere fazer as coisas do seu jeito. \n Seu lema é \"sem tempo irmão\". Mas toma cuidado com as ações precipitadas e tenta cuidar pra não prejudicar os coleguinhas ao redor.",
                    code: "d",
                    badge:
                        Badge(
                            iconImageURL: "tenis4",
                            profileImagesURL: [
                                .coracaozinho : "DISC_Dominante_Cora",
                                .diabinho : "DISC_Dominante_Diab",
                                .estrelinha : "DISC_Dominante_Estr",
                                .florzinha : "DISC_Dominante_Flor"
                            ]
                        ),
                    colorName: "Blue"
                ),
                Result(
                    label: "Influência",
                    about: "Criativo, Sociável & Distraído \n Quem tem o perfil de influência, tende a viver no mundo da lua, ter ideias boas e transformadoras. \n Seu lema é \"fazer a diferença\". Toma cuidado para não se distrair DEMAIS e tenta ser uma pessoa um tiquinho mais paciente e relaxada.",
                    code: "i",
                    badge:
                        Badge(
                            iconImageURL: "tenis3",
                            profileImagesURL: [
                                .coracaozinho : "DISC_Influencer_Cora",
                                .diabinho : "DISC_Influencer_Diab",
                                .estrelinha : "DISC_Influencer_Estr",
                                .florzinha : "DISC_Influencer_Flor"
                            ]
                        ),
                    colorName: "Pink"
                ),
                Result(
                    label: "Conformidade",
                    about: "Perfeccionista, Organizado & Focado \n Quem tem o perfil de conformidade, tende a querer as coisas bem feitas. Na maioria das vezes é quem organiza os rolês e lida bem com planilhas. \n Seu lema é \"fazer o meu melhor\". Tenta não se prejudicar pelo seu detalhismo e vai trabalhando a adaptação a mudanças pra não surtar.",
                    code: "c",
                    badge:
                        Badge(
                            iconImageURL: "tenis1",
                            profileImagesURL: [
                                .coracaozinho : "DISC_Equilibrado_Cora",
                                .diabinho : "DISC_Equilibrado_Diab",
                                .estrelinha : "DISC_Equilibrado_Estr",
                                .florzinha : "DISC_Equilibrado_Flor"
                            ]
                        ),
                    colorName: "Yellow"
                ),
                Result(
                    label: "Estabilidade",
                    about: "Paciente, Acolhedor & Docinho \n Quem tem o perfil de estabilidade, tende a se comunicar bem com as pessoas e ser o pacificador do rolê. Seu lema é \"fazer junto\". \n Cuida pra não se deixar levar demais pelos sentimentos pra não se machucar e lembra que às vezes um conflitinho faz bem.",
                    code: "s",
                    badge:
                        Badge(
                            iconImageURL: "tenis2",
                            profileImagesURL: [
                                .coracaozinho : "DISC_Cauteloso_Cora",
                                .diabinho : "DISC_Cauteloso_Diab",
                                .estrelinha : "DISC_Cauteloso_Estr",
                                .florzinha : "DISC_Cauteloso_Flor"
                            ]
                        ),
                    colorName: "Green"
                ),
            ]
        ),
        
        Quiz(
            title: "tipos de criatividade",
            imageName: "IlustraCriatividade",
            shortDescription: "Encontre seu chapéu ideal",
            longDescription: "Todos nós somos criativos! A criatividade só se manifesta de formas diferentes em cada um. Nesse teste você vai descobrir qual dos 8 tipos de criatividade é a sua. Let's go!!!",
            durationInMinutes: 5,
            colorName: "Green",
            questions: [
                Question(
                    label: "Você normalmente:",
                    answers: [
                        Answer(label: "Segue as regras", score: "c"),
                        Answer(label: "Taca o foda-se", score: "d"),
                    ]
                ),
                Question(
                    label: "Malas prontas, agora você precisa de: ",
                    answers: [
                        Answer(label: "Destino", score: "c"),
                        Answer(label: "Direção", score: "d"),
                    ]
                ),
                Question(
                    label: "Suas ideias surgem pelo:",
                    answers: [
                        Answer(label: "Método", score: "c"),
                        Answer(label: "Caos", score: "d"),
                    ]
                ),
                Question(
                    label: "Tudo está conectado?",
                    answers: [
                        Answer(label: "SIM!!!!", score: "d"),
                        Answer(label: "Que?", score: "c"),
                    ]
                ),
                Question(
                    label: "#Reflita - A vida é composta por:",
                    answers: [
                        Answer(label: "Sistemas", score: "c"),
                        Answer(label: "Histórias", score: "d"),
                    ]
                ),
                Question(
                    label: "Sua porta está:",
                    answers: [
                        Answer(label: "Sempre aberta #sóvem", score: "b"),
                        Answer(label: "Com uma senha secreta pros chegados", score: "a"),
                    ]
                ),
                Question(
                    label: "Prefere falar:",
                    answers: [
                        Answer(label: "Com alguém que mal conheço mas considera pakas", score: "b"),
                        Answer(label: "Com as vozes da sua cabeça", score: "a"),
                    ]
                ),
                Question(
                    label: "Você é mais:",
                    answers: [
                        Answer(label: "Biscoito da sorte", score: "a"),
                        Answer(label: "Bolo de aniversário", score: "b"),
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
                    label: "Normalmente você vai:",
                    answers: [
                        Answer(label: "Voando", score: "b"),
                        Answer(label: "Engatinhando", score: "a"),
                    ]
                ),
                Question(
                    label: "Atualizações estão prontas para serem intaladas",
                    answers: [
                        Answer(label: "Instalar agora", score: "f"),
                        Answer(label: "Me lembre amanhã", score: "e"),
                    ]
                ),
                Question(
                    label: "Sua mente passa mais tempo:",
                    answers: [
                        Answer(label: "Focada!!!", score: "f"),
                        Answer(label: "Viajando na maionese", score: "e"),
                    ]
                ),
                Question(
                    label: "Prefere:",
                    answers: [
                        Answer(label: "Cama & Netflix", score: "e"),
                        Answer(label: "Acampamento com os amigos", score: "f"),
                    ]
                ),
                Question(
                    label: "Na hora de entrar na piscina:",
                    answers: [
                        Answer(label: "Calminha, começando pelo dedinho do pé", score: "e"),
                        Answer(label: "Mergulho de cabeça, roupa e tudo", score: "f"),
                    ]
                ),
                Question(
                    label: "Sua primeira pergunta é sempre:",
                    answers: [
                        Answer(label: "Pq diabos?", score: "e"),
                        Answer(label: "Como é possível?", score: "f"),
                    ]
                )
            ],
            results: [
                Result(
                    label: "Artista",
                    about: "Como um ARTISTA, você precisa criar para se sentir verdadeiramente vivo. \n Você chega passando visão para as pessoas, é movido pelo desejo de se expressar e transformar o mundo ao seu redor. O tipo ARTISTA vive no espaço entre os mundos interno e externo, e seu dom é a capacidade de manifestar poderosamente o que está dentro de você. \n Você é todo conceitual e tem uma forte orientação estética. Você tende a trabalhar melhor sozinho, sem ninguém atrapalhando suas ideias. Anseia pela independência que o deixe livre para seguir seus impulsos criativos.",
                    code: "adf",
                    badge:
                        Badge(
                            iconImageURL: "chapeu6",
                            profileImagesURL: [
                                .coracaozinho : "Criatividade_Artista_Cora",
                                .diabinho : "Criatividade_Artista_Diab",
                                .estrelinha : "Criatividade_Artista_Estr",
                                .florzinha : "Criatividade_Artista_Flor"
                            ]
                        ),
                    colorName: "Blue"
                ),
                Result(
                    label: "Pensadora",
                    about: " Para o Pensador, a vida é verdadeiramente única, você experimenta o mundo como uma oportunidade infinita de aprendizado, descoberta e busca da verdade. Impulsionado por uma vontade insaciável de ser um filósofo no século XXI, o PENSADOR faz a busca pelo conhecimento e a verdade, uma busca para toda a vida. Poucas coisas satisfazem sua mente curiosa mais do que resolver um probléma que ninguém mais consegue, você se contenta em passar muito do seu tempo sozinho, prefere ficar longe de toda essa onda de tiktok e stories do Instagram.",
                    code: "ace",
                    badge:
                        Badge(
                            iconImageURL: "chapeu1",
                            profileImagesURL: [
                                .coracaozinho : "Criatividade_Pensador_Cora",
                                .diabinho : "Criatividade_Pensador_Diab",
                                .estrelinha : "Criatividade_Pensador_Estr",
                                .florzinha : "Criatividade_Pensador_Flor"
                            ]
                        ),
                    colorName: "Pink"
                ),
                Result(
                    label: "Aventureira",
                    about: "Não há como dizer onde a curiosidade infinita do AVENTURADOR pode nos levar. Mas ele come criatividade e entusiasmo no café da manhã, você se inspira facilmente, as vezes mais do que deveria. Já que acaba deixando se levar pelos pensamentos e vontades. Os tipos de AVENTURADOR são apaixonados, expressivos , espíritos criativos. Como um AVENTUREIRO, você nunca fica satisfeito em apenas ter ideias. Em vez disso, você tem uma necessidade quase compulsiva de fazer elas acontecerem.",
                    code: "bdf",
                    badge:
                        Badge(
                            iconImageURL: "chapeu4",
                            profileImagesURL: [
                                .coracaozinho : "Criatividade_Aventureiro_Cora",
                                .diabinho : "Criatividade_Aventureiro_Diab",
                                .estrelinha : "Criatividade_Aventureiro_Estr",
                                .florzinha : "Criatividade_Aventureiro_Flor"
                            ]
                        ),
                    colorName: "Yellow"
                ),
                Result(
                    label: "Criador",
                    about: "Direcionado, focado e dedicado ao processo criativo, o CRIADOR dominou a arte de manifestar idéias e visões de forma tridimensional. A sociedade agradece ao trabalho de um CRIADOR, que desenvolve sistemas, estruturas e inovações em que todos nós confiamos. Um dos trabalhadores mais dedicados de todos os tipos, o CRIADOR está quase sempre ocupado resolvendo pepinos, dobrando metas e concluindo projetos. Existem poucas coisas que trazem mais a você satisfação do que criar coisas e fazer progressos em qualquer forma.",
                    code: "acf",
                    badge:
                        Badge(
                            iconImageURL: "chapeu5",
                            profileImagesURL: [
                                .coracaozinho : "Criatividade_Criador_Cora",
                                .diabinho : "Criatividade_Criador_Diab",
                                .estrelinha : "Criatividade_Criador_Estr",
                                .florzinha : "Criatividade_Criador_Flor"
                            ]
                        ),
                    colorName: "Green"
                ),
                Result(
                    label: "Mão na massa",
                    about: "O MÃO NA MASSA é o cara que “fala e faz”. Orientado para as pessoas, analítico, pragmático, e dinâmico, você tem uma natureza altamente criativa, que é equilibrada por um realismo fundamentado e uma atitude de \"fazer com que seja feito\". Em seus olhos, uma ideia tem valor real apenas quando se transforma em algo que outros podem desfrutar. Foca nos objetivos e em ter resultados desejados.",
                    code: "bcf",
                    badge:
                        Badge(
                            iconImageURL: "chapeu2",
                            profileImagesURL: [
                                .coracaozinho : "Criatividade_Maonamassa_Cora",
                                .diabinho : "Criatividade_Maonamassa_Diab",
                                .estrelinha : "Criatividade_Maonamassa_Estr",
                                .florzinha : "Criatividade_Maonamassa_Flor"
                            ]
                        ),
                    colorName: "Blue"
                ),
                Result(
                    label: "Sonhador",
                    about: "O mundo é um lugar mágico aos olhos de um SONHADOR. Onde os outros veja fatos e números, você vê sinais do universo, metáforas e significados ocultos. Você é profundamente emocional e intuitivo, com uma imaginação vívida - é idealista e romântico por natureza. O mundo interior é sempre onde você se sente mais em casa. Você fica feliz em vagar por horas a fio em sua paisagem mental de pensamentos, emoções e fantasias. Você está naturalmente desenhado para expressar seu mundo interior por meio de atividades literárias, música e artes visuais. Pense em você como o \"mágico da vida real\" dos tipos criativos.",
                    code: "ade",
                    badge:
                        Badge(
                            iconImageURL: "chapeu7",
                            profileImagesURL: [
                                .coracaozinho : "Criatividade_Sonhador_Cora",
                                .diabinho : "Criatividade_Sonhador_Diab",
                                .estrelinha : "Criatividade_Sonhador_Estr",
                                .florzinha : "Criatividade_Sonhador_Flor"
                            ]
                        ),
                    colorName: "Pink"
                ),
                Result(
                    label: "Inovador",
                    about: "O INOVADOR  vê tudo através das lentes de possibilidades e progressos, problemas e soluções. Você se sente muito intelectual e criativo quando resolve problemas. Sonhar com maneiras novas e aprimoradas de fazer as coisas é o seu role. Sua atenção está amplamente voltada para o mundo ao seu redor, e você está constantemente pensando em inovar sistemas que já existem para impulsionar as coisas para o próximo nível.  Mudar pode ser assustador para a maioria das pessoas, mas para você, é o combustível para seu fogo criativo. Um pioneiro, você está aqui neste planeta para iluminar o caminho para o futuro, talvez seja fã de Elon Musk. Você é um tomador de riscos natural, com um insaciável desejo de testar limites e expandir fronteiras para explorar territórios desconhecidos.",
                    code: "bce",
                    badge:
                        Badge(
                            iconImageURL: "chapeu8",
                            profileImagesURL: [
                                .coracaozinho : "Criatividade_Inovador_Cora",
                                .diabinho : "Criatividade_Inovador_Diab",
                                .estrelinha : "Criatividade_Inovador_Estr",
                                .florzinha : "Criatividade_Inovador_Flor"
                            ]
                        ),
                    colorName: "Yellow"
                ),
                Result(
                    label: "Visionário",
                    about: "Você vive em um mundo de possibilidades infinitas, preferindo ver as coisas não como eles são, mas pelo o que elas podem ser. Você sabe que na vida existem limites, mas você busca, de alguma maneira, ultrapassar todos eles. É emocional, apaixonado e cheio de ideias. Sua natureza é introspectiva e intuitiva, é equilibrada por um grande interesse pelo mundo ao seu redor e desejo de contribuir para a sociedade. Carismático e expressivo, você adora compartilhar suas ideias malucas com outras pessoas.",
                    code: "bde",
                    badge:
                        Badge(
                            iconImageURL: "chapeu3",
                            profileImagesURL: [
                                .coracaozinho : "Criatividade_Visionario_Cora",
                                .diabinho : "Criatividade_Visionario_Diab",
                                .estrelinha : "Criatividade_Visionario_Estr",
                                .florzinha : "Criatividade_Visionario_Flor"
                            ]
                        ),
                    colorName: "Green"
                ),
            ]
        ),
        
        Quiz(
            title: "Sabotage",
            imageName: "IlustraSabotagem",
            shortDescription: "Quais são seus sabotadores",
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            durationInMinutes: 5,
            colorName: "Purple",
            questions: [],
            results: []
        ),
        
        Quiz(
            title: "Só love\nSó love",
            imageName: "IlustraSoLove",
            shortDescription: "Qual a sua linguagem do amor?",
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            durationInMinutes: 5,
            colorName: "Blue",
            questions: [],
            results: []
        ),
        
        Quiz(
            title: "só love",
            imageName: "IlustraSoLove",
            shortDescription: "5 linguagens do amor",
            longDescription: "Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa Descrição longa",
            durationInMinutes: 5,
            colorName: "Pink",
            questions: [],
            results: []
        )
    ]
}
