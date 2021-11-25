import SwiftUI
import CoreData

var firstQuizList: [Quiz] = [
    QuizBank.shared.quizList[0],
    QuizBank.shared.quizList[3]
]
var secondQuizList: [Quiz] = [
    QuizBank.shared.quizList[1],
    QuizBank.shared.quizList[2],
    QuizBank.shared.quizList[4]
]

struct QuizListView: View {
    @State var isActive: Bool = false
    @State private var showPopUp: Bool = false
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HStack {
                            Text("Olá, Fulana!")
                                .font(.system(size: 35, weight: .black, design: .default))
                            Spacer()
                        }.padding()
                        
                        LeftTitle(text: "Em alta")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(firstQuizList) { quiz in
                                    if quiz.questions.count != 0 {
                                        NavigationLink(destination: QuizIntroView(quiz: quiz)) {
                                            VerticalCard(quiz: quiz)
                                        }
                                    } else {
                                        Button(action: {
                                            withAnimation(.linear(duration: 0.2)) {
                                                showPopUp.toggle()
                                            }
                                        }) {
                                            VerticalCard(quiz: quiz)
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                        }
                        
                        LeftTitle(text: "Encontre seu teste ideal")
                        
                        VStack {
                            ForEach(secondQuizList) { quiz in
                                if quiz.questions.count != 0 {
                                    NavigationLink(destination: QuizIntroView(quiz: quiz)) {
                                        HorizontalCard(quiz: quiz)
                                    }
                                } else {
                                    Button(action: {
                                        withAnimation(.linear(duration: 0.2)) {
                                            showPopUp.toggle()
                                        }
                                    }) {
                                        HorizontalCard(quiz: quiz)
                                    }
                                }
                            }
                        }
                    }
                }
                .navigationBarHidden(true)
                .navigationBarTitleDisplayMode(.inline)
                .background(Color.preto.edgesIgnoringSafeArea(.all))
            }
            
            ComingSoonQuizPopUpView(show: $showPopUp)
        }
        .background(Color.preto.edgesIgnoringSafeArea(.all))
        .accentColor(.white)
    }
}

struct QuizList_Previews: PreviewProvider {
    static var previews: some View {
        QuizListView()
            .environment(\.colorScheme, .dark)
    }
}
