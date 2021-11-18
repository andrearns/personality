import SwiftUI

struct QuizView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var quiz: Quiz!
    @State var isResultTapped = false
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
                                if currentQuestionIndex <= quiz.questions.count - 1 && currentQuestionIndex != 0 {
                                    currentQuestionIndex = currentQuestionIndex - 1
                                    currentQuestion = quiz.questions[currentQuestionIndex]
                                } else {
                                    // TO DO
                                    print("Go back to quiz list view")
                                    self.presentationMode.wrappedValue.dismiss()
                                }
                            }) {
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 24, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            Text(quiz.title)
                                .font(.system(size: 18, weight: .semibold, design: .default))
                            Spacer()
                            Button(action: {
                                // TO DO
                                print("Go back to quiz list view")
                                self.presentationMode.wrappedValue.dismiss()
                            }) {
                                Image(systemName: "xmark")
                                    .font(.system(size: 24, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }
                        }
                        .padding()
                        
                        ProgressBar(currentValue: $currentQuestionIndex, numberOfQuestions: quiz.questions.count)
                    }
                    VStack {
                        HStack {
                            Text("\(currentQuestionIndex + 1). \(quiz.questions[currentQuestionIndex].label)")
                                .font(.system(size: 24, weight: .bold, design: .default))
                            Spacer()
                        }
                        .padding(.vertical, 40)
                            
                        ForEach(quiz.questions[currentQuestionIndex].answers) { answer in
                            QuizCell(answer: answer, isSelected: false)
                        }
                    }
                    .padding()
                }
            }
            VStack {
                Spacer()
                Button(action: {
                    if currentQuestionIndex < quiz.questions.count - 1 {
                        self.currentQuestionIndex += 1
                        self.currentQuestion = quiz.questions[currentQuestionIndex]
                    } else {
                        isResultTapped = true
                    }
                }) {
                    VStack {
                        HStack {
                            Spacer()
                            Text(currentQuestionIndex == quiz.questions.count - 1 ? "Finalizar teste" : "Confirmar resposta")
                                .bold()
                            Spacer()
                        }
                    }
                    NavigationLink("", destination: QuizOutput(), isActive: $isResultTapped)
                }
                .padding()
                .background(Color(uiColor: UIColor(named: quiz.colorName)!))
                .cornerRadius(25)
                .foregroundColor(.white)
            }
            .padding()
        }
        .navigationBarHidden(true)
    }
}
