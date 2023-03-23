//
//  HomeView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/19/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model:DataModel
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    //MARK: Heading HStack
                    HStack{
                        VStack(alignment:.leading){
                            Text("Hello, User")
                                .font(.headline)
                            Text("Workout Buddy")
                                .font(.title.bold())
                        }
                        Spacer()
                        Circle()
                            .frame(height:50)

                    }
                    //MARK: Body Content Vstack
                    VStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(height:175)
                        HStack{
                            Text("Week of March 1st - 7th")
                                .font(.headline)
                            Spacer()
                        }
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                Text("Item")
                                Text("Item")
                                Text("Item")
                                Text("Item")
                                Text("Item")
                                Text("Item")
                                Text("Item")
                                Text("Item")
                                Text("Item")
                               
                            }
                        }
                    }
                }
                
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(DataModel())
    }
}
