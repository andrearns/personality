import SwiftUI

struct QuizView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var navigationHelper: NavigationHelper
    @EnvironmentObject var userViewModel : UserViewModel
    @ObservedObject var quizViewModel: QuizViewModel
    @State var isResultTapped = false
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
                                returnAction()
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
                        
                        ProgressBar(currentValue: $currentQuestionIndex, numberOfQuestions: quizViewModel.quiz.questions.count)
                    }
                    VStack {
                        HStack {
                            Text("\(currentQuestionIndex + 1). \(quizViewModel.quiz.questions[currentQuestionIndex].label)")
                                .font(.system(size: 24, weight: .bold, design: .default))
                            Spacer()
                        }
                        .padding(.vertical, 40)
                            
                        ForEach(quizViewModel.getQuestionAnswer()) { answer in
                            QuizCell(answer: answer, isSelected: currentAnswer == answer) {
                                currentAnswer = answer
                                
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
                                    
                                    guard let result = result else {
                                        return
                                    }
                                    
                                    let userResult = UserResult(result: result, isPrivate: false)
                                    
                                    userViewModel.addUserResult(userResult: userResult)
                                    
                                    isLoading = true
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                        isResultTapped = true
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
            
            if result != nil {
                NavigationLink("", destination: QuizOutput(result: self.result!), isActive: $isResultTapped)
            }
            
            if isLoading {
                LoadingAnimationView(labelText: "Calculando a resposta do seu quiz...")
            }
        }
        .background(Color.preto.edgesIgnoringSafeArea(.all))
        .navigationBarHidden(true)
    }
}
