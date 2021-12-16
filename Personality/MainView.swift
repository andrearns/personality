import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            QuizListView(isActive: false)
                .tabItem {
                    VStack {
                        Image("quizIcon").renderingMode(.template)
                        Text("Quizzos")
                    }
                }
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                
            ProfileView()
                .tabItem {
                    VStack {
                        Image("profileIcon").renderingMode(.template)
                        Text("Perfil")
                    }
                }
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                
        }
        .accentColor(Color.azul)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationViewStyle(.stack)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
    }
}
