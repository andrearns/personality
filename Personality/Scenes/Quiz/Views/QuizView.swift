import SwiftUI

struct QuizView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var navigationHelper: NavigationHelper
    @EnvironmentObject var userViewModel : UserViewModel
    @ObservedObject var quizViewModel: QuizViewModel
    @State var showResultView = false
    @State var isLoading = false
    
    init(quiz: Quiz, questions: [Question], results: [QuizResult]) {
        self.quizViewModel = QuizViewModel(quiz: quiz, questions: questions, results: results)
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
                        
                        ProgressBar(currentValue: $quizViewModel.currentQuestionIndex, numberOfQuestions: quizViewModel.questionsCount())
                    }
                    VStack {
                        HStack {
                            Text(quizViewModel.currentQuestionTitle())
                                .font(.system(size: 24, weight: .bold, design: .default))
                            Spacer()
                        }
                        .padding(.vertical, 40)
                            
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
                            }
                        }
                    }
                    .padding()
                }
            }
            
            
            if isLoading {
                LoadingAnimationView(labelText: "Calculando a resposta do seu quiz...")
            }
            
            if showResultView {
                NavigationLink(
                    "",
                    destination: QuizOutput(result: quizViewModel.result) {
                        quizViewModel.onDisappear()
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
