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
                CalorieHeaderProfileView()
                VStack{
                    CalorieHeaderView(newMeal:$newMeal)
                    VStack{
                        List{
                            Section{
                                ForEach(model.dayMeal.food){item in
                                    if item.mealType == "Breakfast"{
                                        CaloriesRowView(item: item, title: item.title, time: item.time, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                            
                                    }
                                }
                            } header: {
                                Text("Breakfast")
                            }
                            Section{
                                ForEach(model.dayMeal.food){item in
                                    if item.mealType == "Lunch"{
                                        CaloriesRowView(item: item, title: item.title, time: item.time, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                    }
                                }
                                
                            } header: {
                                Text("Lunch")
                            }
                            Section{
                                ForEach(model.dayMeal.food){item in
                                    if item.mealType == "Dinner"{
                                        CaloriesRowView(item: item,title: item.title,  time: item.time, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                    }
                                }
                            } header: {
                                Text("Dinner")
                            }
                            Section{
                                ForEach(model.dayMeal.food){item in
                                    if item.mealType == "Snacks"{
                                        CaloriesRowView(item: item,title: item.title,  time: item.time, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                    }
                                }
                            } header: {
                                Text("Snacks")
                            }
                            
                        }
                        .listStyle(.inset)
                        
                        
                    }
                    
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
