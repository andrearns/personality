import SwiftUI

@main
struct PersonalityApp: App {
    
    @StateObject var navigationHelper = NavigationHelper()
    @StateObject var userViewModel = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
            ChooseEgoView()
                .background(Color.preto.edgesIgnoringSafeArea(.all))
                .environmentObject(navigationHelper)
                .environmentObject(userViewModel)
        }
    }
}
