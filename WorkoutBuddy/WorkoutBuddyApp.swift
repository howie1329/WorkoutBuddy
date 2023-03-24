//
//  WorkoutBuddyApp.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/19/23.
//

import SwiftUI
import Firebase

@main
struct WorkoutBuddyApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataModel())
        }
    }
}


