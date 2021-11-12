//
//  PersonalityApp.swift
//  Personality
//
//  Created by André Arns on 12/11/21.
//

import SwiftUI

@main
struct PersonalityApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
