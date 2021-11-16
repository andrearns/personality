import SwiftUI

struct QuizView: View {
    var quiz: Quiz!
    @State var currentQuestion: Question?
    @State var currentQuestionIndex = 0
    @State var answerList: [Answer] = []
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack {
                    VStack {
                        HStack {
                            Button(action: {
                                
                            }) {
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 24, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            Text(quiz.name)
                                .font(.system(size: 18, weight: .semibold, design: .default))
                            Spacer()
                            Button(action: {
                                
                            }) {
                                Image(systemName: "xmark")
                                    .font(.system(size: 24, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }
                        }.padding()
                        HStack {
                            ForEach(quiz.questionList) { question in
                                VStack {
                                    
                                }
                                .frame(width: 40, height: 5, alignment: .center)
                                .background(Color.white)
                            }
                        }
                    }
                    VStack {
                        HStack {
                            Text("\(currentQuestionIndex + 1). \(quiz.questionList[currentQuestionIndex].title)")
                                .font(.system(size: 24, weight: .bold, design: .default))
                            Spacer()
                        }
                        .padding(.vertical, 40)
//                        Divider()
                            
                        ForEach(quiz.questionList[currentQuestionIndex].answerList) { answer in
                            QuizCellView(answer: answer, isSelected: false)
                        }
                    }
                    .padding()
                }
            }
            VStack {
                Spacer()
                Button(action: {
                    if currentQuestionIndex < quiz.questionList.count - 1 {
                        self.currentQuestionIndex += 1
                        self.currentQuestion = quiz.questionList[currentQuestionIndex]
                    } else {
                        print("Show results")
                    }
                }) {
                    VStack {
                        HStack {
                            Spacer()
                            Text("Confirmar resposta")
                                .bold()
                            Spacer()
                        }
                    }
                }.padding()
                    .background(Color(uiColor: UIColor(named: quiz.backgroundColorName)!))
                    .cornerRadius(25)
                    .foregroundColor(.white)
                
            }.padding()
        }.navigationBarHidden(true)
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(
            quiz: Quiz(
                name: "Teste 1",
                shortDescription: "Descrição curta",
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
                ]
            )
        ).preferredColorScheme(.dark)
    }
}
