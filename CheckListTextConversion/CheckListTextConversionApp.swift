//
//  CheckListTextConversionApp.swift
//  CheckListTextConversion
//
//  Created by 金子朝紀 on 2026/06/11.
//

import SwiftUI
import SwiftData

@main
struct CheckListTextConversionApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            CheckListTemplate.self,
            CheckListSection.self,
            CheckListItem.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
