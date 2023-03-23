//
//  MainTabView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/22/23.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var model:DataModel
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Home")
                }
            CaloriesView()
                .tabItem {
                    Image(systemName: "list.clipboard")
                    Text("Calories")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(DataModel())
    }
}
