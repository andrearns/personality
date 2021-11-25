import SwiftUI

struct QuizView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var navigationHelper: NavigationHelper
    @EnvironmentObject var userViewModel : UserViewModel
    @ObservedObject var quizViewModel: QuizViewModel
    @State var showResultView = false
    @State var isLoading = false
    
    init(quiz: Quiz) {
        self.quizViewModel = QuizViewModel(quiz: quiz)
    }
    
    func returnAction() {
        if !quizViewModel.isFirstQuestion() && !quizViewModel.isLastQuestion() {
            quizViewModel.previousQuestion()
        } else {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack {
                    VStack {
                        HStack {
                            Button(action: {
<<<<<<< HEAD
                                returnAction()
=======
                                if currentQuestionIndex <= quiz.questions!.count - 1 && currentQuestionIndex != 0 {
                                    currentQuestionIndex = currentQuestionIndex - 1
                                    currentQuestion = quiz.questions![currentQuestionIndex]
                                    currentAnswer = answerList[currentQuestionIndex]
                                } else {
                                    print("Go back to quiz list view")
                                    self.presentationMode.wrappedValue.dismiss()
                                }
>>>>>>> abee6af (feat: QuizzesRepository)
                            }) {
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 24, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }
                            
                            Spacer()
                            
                            Text(quizViewModel.quiz.title)
                                .personalityFont(.title, textSize: 18)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                            
                            Button(action: {
                                navigationHelper.selectedView = nil
                            }) {
                                Image(systemName: "xmark")
                                    .font(.system(size: 24, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }
                        }
                        .padding()
                        
<<<<<<< HEAD
                        ProgressBar(currentValue: $quizViewModel.currentQuestionIndex, numberOfQuestions: quizViewModel.questionsCount())
                    }
                    VStack {
                        HStack {
                            Text(quizViewModel.currentQuestionTitle())
=======
                        ProgressBar(currentValue: $currentQuestionIndex, numberOfQuestions: quiz.questions!.count)
                    }
                    VStack {
                        HStack {
                            Text("\(currentQuestionIndex + 1). \(quiz.questions![currentQuestionIndex].label)")
>>>>>>> abee6af (feat: QuizzesRepository)
                                .font(.system(size: 24, weight: .bold, design: .default))
                            Spacer()
                        }
                        .padding(.vertical, 40)
                            
<<<<<<< HEAD
                        ForEach(quizViewModel.getQuestionAnswers()) { answer in
                            QuizCell(answer: answer, isSelected: quizViewModel.isCurrentAnswer(answer)) {
                                quizViewModel.selectAnswer(answer)
                                
                                if !quizViewModel.isLastQuestion() {
                                    quizViewModel.nextQuestion()
                                } else {
                                    quizViewModel.generateResult()
                                    
                                    isLoading = true
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                        withAnimation {
                                            showResultView = true
                                        }
                                    }
                                }
=======
                        ForEach(quiz.questions![currentQuestionIndex].answers) { answer in
                            QuizCell(answer: answer, isSelected: currentAnswer == answer) {
                                currentAnswer = answer
>>>>>>> abee6af (feat: QuizzesRepository)
                            }
                        }
                    }
                    .padding()
                }
            }
<<<<<<< HEAD
            
=======
            VStack {
                Spacer()
                Button(action: {
                    if currentAnswer != nil {
                        answerList[currentQuestionIndex] = currentAnswer
                        
                        if currentQuestionIndex < quiz.questions!.count - 1 {
                            self.currentQuestionIndex += 1
                            self.currentQuestion = quiz.questions![currentQuestionIndex]
                            
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
                            Text(currentQuestionIndex == quiz.questions!.count - 1 ? "Finalizar teste" : "Confirmar resposta")
                                .bold()
                            Spacer()
                        }
                    }
                    if result != nil {
                        NavigationLink("", destination: QuizOutput(result: self.result!), isActive: $isResultTapped)
                    }
                }
                .padding()
                .background(Color(uiColor: UIColor(named: quiz.color)!))
                .cornerRadius(25)
                .foregroundColor(.white)
                
            }
            .padding()
>>>>>>> abee6af (feat: QuizzesRepository)
            
            if isLoading {
                LoadingAnimationView(labelText: "Calculando a resposta do seu quiz...")
            }
            
            if showResultView {
                NavigationLink(
                    "",
                    destination: QuizOutput(result: quizViewModel.result) {
                        guard let userResult = quizViewModel.getUserResult() else { return }
                        userViewModel.addUserResult(userResult: userResult)
                    },
                    isActive: $showResultView
                )
            }
        }
        .background(
            Color.preto.edgesIgnoringSafeArea(.all)
        )
        .navigationBarHidden(true)
    }
}
