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
                HStack{
                    VStack(alignment:.leading){
                        Text("User's Eating")
                            .font(.title.bold())
                        Text("\(model.dayMeal.day.formatted(date:.complete, time:.omitted))")
                            .font(.subheadline)
                    }
                    Spacer()
                    Circle()
                        .frame(height:50)
                    
                }
                VStack{
                    HStack{
                        Text("Calorie Intake: \(model.dayMeal.totalCalories)")
                            .font(.footnote)
                        Text("Protein: \(model.dayMeal.protienCount)")
                            .font(.footnote)
                        Text("Carbs: \(model.dayMeal.carbCount)")
                            .font(.footnote)
                        Text("Fats: \(model.dayMeal.fatCount)")
                            .font(.footnote)
                        Button {
                            newMeal = true
                        } label: {
                            Image(systemName: "plus.app")
                                .imageScale(.large)
                                .foregroundColor(.black)
                        }
                        .sheet(isPresented: $newMeal) {
                            MealFormView(viewState:$newMeal)
                        }
                        
                    }
                    VStack{
                        List{
                            Section{
                                ForEach(model.dayMeal.food){item in
                                    if item.mealType == "Breakfast"{
                                        CaloriesRowView(title: item.title, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                    }
                                }
                            } header: {
                                Text("Breakfast")
                            }
                            Section{
                                ForEach(model.dayMeal.food){item in
                                    if item.mealType == "Lunch"{
                                        CaloriesRowView(title: item.title, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                    }
                                }
                                
                            } header: {
                                Text("Lunch")
                            }
                            Section{
                                ForEach(model.dayMeal.food){item in
                                    if item.mealType == "Dinner"{
                                        CaloriesRowView(title: item.title, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                    }
                                }
                            } header: {
                                Text("Dinner")
                            }
                            Section{
                                ForEach(model.dayMeal.food){item in
                                    if item.mealType == "Snacks"{
                                        CaloriesRowView(title: item.title, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
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
