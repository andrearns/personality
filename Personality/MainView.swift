import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            QuizListView(isActive: false)
                .tabItem {
                    Label("Testes", systemImage: "list.dash")
                }
            FriendsView()
                .tabItem {
                    Label("Amigos", systemImage: "heart")
                }
            ProfileView()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
    }
}
