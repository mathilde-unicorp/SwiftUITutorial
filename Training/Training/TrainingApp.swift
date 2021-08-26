//
//  TrainingApp.swift
//  Training
//
//  Created by Ressier Mathilde on 26/08/2021.
//

import SwiftUI

@main
struct TrainingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TrainingListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
