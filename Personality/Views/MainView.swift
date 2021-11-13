import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            QuizListView()
                .tabItem {
                    Label("Testes", systemImage: "list.dash")
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
    }
}
