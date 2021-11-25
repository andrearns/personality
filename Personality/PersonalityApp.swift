import SwiftUI

@main
struct PersonalityApp: App {
    
    @StateObject var navigationHelper = NavigationHelper()
    @StateObject var userViewModel = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
<<<<<<< HEAD
            ChooseEgoView()
                .background(Color.preto.edgesIgnoringSafeArea(.all))
                .environmentObject(navigationHelper)
                .environmentObject(userViewModel)
=======
//            LoginView()
            MainView()
>>>>>>> abee6af (feat: QuizzesRepository)
        }
    }
}
