import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            QuizListView(isActive: false)
                .tabItem {
                    Label("Testes", systemImage: "list.dash")
                }
            ProfileView()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
        }.accentColor(Color(uiColor: UIColor(named: "Pink")!))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
    }
}
