//
//  MealFormView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/23/23.
//

import SwiftUI

struct MealFormView: View {
    @EnvironmentObject var model:DataModel
    @State var foodTitle = ""
    @State var time = Date.now
    @State var calories = 0
    @State var protienCount = 0
    @State var carbCount = 0
    @State var fatCount = 0
    @State var mealType = "Breakfast"
    @Binding var viewState:Bool
    
    var foodType = ["Breakfast","Lunch","Dinner","Snacks"]
    var body: some View {
        VStack{
            Form{
                Section{
                    TextField("Meal Name", text: $foodTitle)
                } header: {
                    Text("Meal Name")
                }
                Section{
                    Picker("Types", selection: $mealType) {
                        ForEach(foodType, id:\.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }header: {
                    Text("Meal Types")
                }
                Section{
                    DatePicker("Time", selection: $time, displayedComponents: .hourAndMinute)
                }
                Section{
                    TextField("calorieCount", value: $calories, format:.number)
                } header: {
                    Text("Total Calories")
                }
                Section{
                    TextField("protienCount", value: $protienCount, format:.number)
                } header:{
                    Text("Protien Count")
                }
                Section{
                    TextField("carbCount", value: $carbCount, format:.number)
                } header: {
                    Text("Carb Count")
                }
                Section{
                    TextField("fatCount", value: $fatCount, format:.number)
                } header: {
                    Text("Fat Count")
                }
                
                Button {
                    model.dayMeal.food.append(Meal(id: UUID(), databaseID: "", title: foodTitle, mealType: mealType, totalCalories: calories, protienCount: protienCount, carbCount: carbCount, fatCount: fatCount, time: time))
                    model.dayMeal.totalCalories += calories
                    model.dayMeal.protienCount += protienCount
                    model.dayMeal.carbCount += carbCount
                    model.dayMeal.fatCount += fatCount
                    viewState = false
                    
                } label: {
                    HStack{
                        Spacer()
                        Text("Submit")
                        Spacer()
                    }
                    
                }
            }
        }
    }
}
