//
//  VoCapApp.swift
//  VoCap
//
//  Created by 윤태민 on 6/1/21.
//

import SwiftUI

@main
struct VoCapApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
