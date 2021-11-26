import SwiftUI

@main
struct PersonalityApp: App {
    
    var body: some Scene {
        WindowGroup {
            ChooseEgoView()
                .background(Color.preto.edgesIgnoringSafeArea(.all))
                .environmentObject(NavigationHelper())
                .environmentObject(UserViewModel())
        }
    }
}
