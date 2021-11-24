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
        NavigationView {
            ZStack {
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
                                VerticalCard(quiz: firstQuizList[0])
                                VerticalCard(quiz: firstQuizList[1])
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                        }
                        
                        LeftTitle(text: "Encontre seu teste ideal")
                        
                        VStack {
                            ForEach(secondQuizList) { quiz in
                                Button(action: {
                                    
                                }) {
                                    
                                }
                            }
                        }
                    }
                }
                .navigationBarHidden(true)
                .navigationBarTitleDisplayMode(.inline)
            }
            
            ComingSoonQuizPopUpView(show: $showPopUp)
        }
        .accentColor(.white)
    }
}

struct QuizList_Previews: PreviewProvider {
    static var previews: some View {
        QuizListView()
            .environment(\.colorScheme, .dark)
    }
}
