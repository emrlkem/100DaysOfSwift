//
// CoreDataListExerciseApp.swift



import SwiftUI
import CoreData

@main
struct CoreDataStateApp: App {
    let persistenceController = PersistenceController.shared //1

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext,
                              persistenceController.container.viewContext)
        }
    }
}
