//
//  SampleData.swift
//  FriendsFavoriteMovies
//
//  Created by Christopher Bille on 4/10/25.
//

import Foundation
import SwiftData

@MainActor
class SampleData {
    static let shared = SampleData()
    let modelContainer: ModelContainer
    var context: ModelContext {
        modelContainer.mainContext
    }
    
    private init() {
        let schema = Schema([
            Friend.self,
            Movie.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        do {
             modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }
}
