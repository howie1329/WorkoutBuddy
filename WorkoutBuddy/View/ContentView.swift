//
//  ContentView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/19/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: DataModel
    var body: some View {
        MainTabView()
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataModel())
    }
}
