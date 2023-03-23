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
                    }
                    Spacer()
                    Circle()
                        .frame(height:50)
                    
                }
                VStack{
                    HStack{
                        Text("Calorie Intake: 1546")
                            .font(.footnote)
                        Text("Protein: 89")
                            .font(.footnote)
                        Text("Carbs: 102")
                            .font(.footnote)
                        Text("Fats: 128")
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
                                ForEach(model.meals){item in
                                    if item.mealType == "Breakfast"{
                                        CaloriesRowView(title: item.title, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                    }
                                }
                            } header: {
                                Text("Breakfast")
                            }
                            Section{
                                ForEach(model.meals){item in
                                    if item.mealType == "Lunch"{
                                        CaloriesRowView(title: item.title, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                    }
                                }
                                
                            } header: {
                                Text("Lunch")
                            }
                            Section{
                                ForEach(model.meals){item in
                                    if item.mealType == "Dinner"{
                                        CaloriesRowView(title: item.title, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                    }
                                }
                            } header: {
                                Text("Dinner")
                            }
                            Section{
                                ForEach(model.meals){item in
                                    if item.mealType == "Snacks"{
                                        CaloriesRowView(title: item.title, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                    }
                                }
                            } header: {
                                Text("Snacks")
                            }
                            
                        }
                        
                        
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
