//
//  CaloriesView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/22/23.
//

import SwiftUI

struct CaloriesView: View {
    @EnvironmentObject var model:DataModel
    var body: some View {
        NavigationView{
            ScrollView{
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
                            Text("Protein: 89")
                            Text("Carbs: 102")
                            Text("Fats: 128")
                            NavigationLink {
                                MealFormView()
                            } label: {
                                Image(systemName: "plus.app")
                                    .imageScale(.large)
                                    .foregroundColor(.black)
                            }
                            
                        }
                        .font(.footnote)
                        Divider()
                        Section{
                            ForEach(model.meals){item in
                                if item.mealType == "Breakfast"{
                                    CaloriesRowView(title: item.title, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                }
                            }
                        } header: {
                            Text("Breakfast")
                        }
                        Divider()
                        Section{
                            ForEach(model.meals){item in
                                if item.mealType == "Lunch"{
                                    CaloriesRowView(title: item.title, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                }
                            }
                            
                        } header: {
                            Text("Lunch")
                        }
                        Divider()
                        Section{
                            ForEach(model.meals){item in
                                if item.mealType == "Dinner"{
                                    CaloriesRowView(title: item.title, calories: item.totalCalories, protien: item.protienCount, carbs: item.carbCount, fat: item.fatCount)
                                }
                            }
                        } header: {
                            Text("Dinner")
                        }
                        Divider()
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
            .padding()
        }
    }
}

struct CaloriesView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesView()
            .environmentObject(DataModel())
    }
}
