//
//  WorkoutView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/24/23.
//

import SwiftUI

struct WorkoutView: View {
    @EnvironmentObject var model:DataModel
    @State var workoutForm = false
    @State var searchBar = ""
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(model.workoutPlans){item in
                        if item.title.contains(searchBar){
                            NavigationLink {
                                WorkoutDetailView(title: item.title, workouts: item.plan)
                            } label: {
                                Text(item.title)
                            }
                        } else if searchBar == ""{
                            NavigationLink {
                                WorkoutDetailView(title: item.title, workouts: item.plan)
                            } label: {
                                Text(item.title)
                            }
                        }
                    }
                }
                .listStyle(.inset)
            }
            .sheet(isPresented: $workoutForm, content: {
                WorkoutFormView()
            })
            .navigationBarTitle("Workouts")
            .toolbar(content: {
                Button {
                    workoutForm = true
                } label: {
                    Image(systemName: "plus")
                }

            })
            .searchable(text: $searchBar)
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
            .environmentObject(DataModel())
    }
}
