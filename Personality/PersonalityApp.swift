import SwiftUI

@main
struct PersonalityApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            QuizList()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
