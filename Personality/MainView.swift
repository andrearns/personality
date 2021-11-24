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
            ProfileView()
                .tabItem {
                    VStack {
                        Image("profileIcon").renderingMode(.template)
                        Text("Perfil")
                    }
                }
        }.accentColor(Color.azul)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
    }
}
