import SwiftUI

struct QuizView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var quiz: QuizModel!
    @State var isResultTapped = false
    @State var currentQuestion: QuestionModel?
    @State var currentQuestionIndex = 0
    @State var answerList: [AnswerModel] = []
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack {
                    VStack {
                        HStack {
                            Button(action: {
                                if currentQuestionIndex <= quiz.questionList.count - 1 && currentQuestionIndex != 0 {
                                    currentQuestionIndex = currentQuestionIndex - 1
                                    currentQuestion = quiz.questionList[currentQuestionIndex]
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
                            Text(quiz.name)
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
                        
                        ProgressBar(currentValue: $currentQuestionIndex, numberOfQuestions: quiz.questionList.count)
                    }
                    VStack {
                        HStack {
                            Text("\(currentQuestionIndex + 1). \(quiz.questionList[currentQuestionIndex].title)")
                                .font(.system(size: 24, weight: .bold, design: .default))
                            Spacer()
                        }
                        .padding(.vertical, 40)
                            
                        ForEach(quiz.questionList[currentQuestionIndex].answerList) { answer in
                            QuizCell(answer: answer, isSelected: false)
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
                        isResultTapped = true
                    }
                }) {
                    VStack {
                        HStack {
                            Spacer()
                            Text(currentQuestionIndex == quiz.questionList.count - 1 ? "Finalizar teste" : "Confirmar resposta")
                                .bold()
                            Spacer()
                        }
                    }
                    NavigationLink("", destination: QuizOutput(), isActive: $isResultTapped)
                }
                .padding()
                .background(Color(uiColor: UIColor(named: quiz.backgroundColorName)!))
                .cornerRadius(25)
                .foregroundColor(.white)
            }
            .padding()
        }
        .navigationBarHidden(true)
    }
}
