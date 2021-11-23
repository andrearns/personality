import SwiftUI

struct QuizView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var quiz: Quiz!
    
    @State var isResultTapped = false
    @State var isLoading = false
    @State var currentQuestion: Question?
    @State var currentQuestionIndex = 0
    @State var answerList: [Int : Answer] = [:]
    @State var currentAnswer: Answer? = nil
    @State var result: Result?
    
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
                                    currentAnswer = answerList[currentQuestionIndex]
                                } else {
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
                                .multilineTextAlignment(.center)
                            Spacer()
                            Button(action: {
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
                            QuizCell(answer: answer, isSelected: currentAnswer == answer) {
                                currentAnswer = answer
                            }
                        }
                    }
                    .padding()
                }
            }
            VStack {
                Spacer()
                Button(action: {
                    if currentAnswer != nil {
                        answerList[currentQuestionIndex] = currentAnswer
                        
                        if currentQuestionIndex < quiz.questions.count - 1 {
                            self.currentQuestionIndex += 1
                            self.currentQuestion = quiz.questions[currentQuestionIndex]
                            
                            if answerList[currentQuestionIndex] != nil {
                                currentAnswer = answerList[currentQuestionIndex]
                            } else {
                                currentAnswer = nil
                            }
                            
                        } else {
                            switch quiz.title {
                            case "DISK ME":
                                result = generateDISCResult(answers: answerList)
                            case "Creative \nTypes":
                                result = generateCreativeTypesResult(answers: answerList)
                            default:
                                print("There is no functions to generate a result for this quiz")
                            }
                            print("Quiz result: \(result)")
                            
                            isLoading = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                isResultTapped = true
                            }
                        }
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
                    if result != nil {
                        NavigationLink("", destination: QuizOutput(result: self.result!), isActive: $isResultTapped)
                    }
                }
                .padding()
                .background(Color(uiColor: UIColor(named: quiz.colorName)!))
                .cornerRadius(25)
                .foregroundColor(.white)
                
            }
            .padding()
            
            if isLoading {
                LoadingAnimationView(labelText: "Calculando a resposta do seu quiz...")
            }
        }
        .navigationBarHidden(true)
    }
}
