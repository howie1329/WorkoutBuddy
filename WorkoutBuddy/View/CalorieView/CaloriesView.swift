//
//  CaloriesView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/22/23.
//

import SwiftUI

struct CaloriesView: View {
    @EnvironmentObject var model:DataModel
    @State var newMeal = false
    var body: some View {
        NavigationView{
            VStack{
                CalorieHeaderView()
                VStack{
                    List{
                        Section{
                            ForEach(model.dayMeal.food){item in
                                if item.mealType == "Breakfast"{
                                    CaloriesRowView(item: item)
                                        
                                }
                            }
                        } header: {
                            Text("Breakfast")
                        }
                        Section{
                            ForEach(model.dayMeal.food){item in
                                if item.mealType == "Lunch"{
                                    CaloriesRowView(item: item)
                                }
                            }
                            
                        } header: {
                            Text("Lunch")
                        }
                        Section{
                            ForEach(model.dayMeal.food){item in
                                if item.mealType == "Dinner"{
                                    CaloriesRowView(item: item)
                                }
                            }
                        } header: {
                            Text("Dinner")
                        }
                        Section{
                            ForEach(model.dayMeal.food){item in
                                if item.mealType == "Snacks"{
                                    CaloriesRowView(item: item)
                                }
                            }
                        } header: {
                            Text("Snacks")
                        }
                        
                    }
                    .listStyle(.inset)
                    
                    
                }
                
            }
            .navigationBarTitle("Calorie Tracker")
            .toolbar {
                Button {
                    newMeal = true
                } label: {
                    Image(systemName: "plus")
                        .imageScale(.large)
                }
                .sheet(isPresented: $newMeal) {
                    MealFormView(viewState:$newMeal)
                }
            }
        }
        
    }
}

struct CaloriesView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesView()
            .environmentObject(DataModel())
    }
}
