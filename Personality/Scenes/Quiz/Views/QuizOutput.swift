import SwiftUI

struct QuizOutput: View {
    
    @EnvironmentObject var navigationHelper: NavigationHelper
    var result: Result
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                BadgeComponentView(result: result)
                
                VStack(alignment: .center) {
                    ResultTitle(label: result.label)
                    
                    Text(result.about)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.branco)
                        .padding(.bottom, 32)
                        .padding(.horizontal)
                    
                    Spacer()
                }
                Button(action: {
                    // To do
                    print("Share result")
                }) {
                    RightButtonStuff(title: "Compartilhar", systemImageName: "arrow.right", textColor: Color.preto)
                }
        
                Button(action: {
                    navigationHelper.selectedView = nil
                }) {
                    LeftButtonStuff(title: "Quizzos", systemImageName: "arrow.left")
                }
            }
            .padding(.horizontal)
        }
        .background(Color.preto.edgesIgnoringSafeArea(.all))
        .navigationBarItems(trailing:
            Button(action: {
                navigationHelper.selectedView = nil
            }) {
                Image(systemName: "xmark")
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .foregroundColor(.white)
            }
        )
        .navigationBarBackButtonHidden(true)
    }
    
    struct QuizOutput_Previews: PreviewProvider {
        static var previews: some View {
            QuizOutput(result: QuizBank.shared.quizList[0].results[0])
        }
    }
}

