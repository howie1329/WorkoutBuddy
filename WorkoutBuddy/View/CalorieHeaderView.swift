//
//  CalorieHeaderView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/24/23.
//

import SwiftUI

struct CalorieHeaderView: View {
    @Binding var newMeal: Bool
    @EnvironmentObject var model:DataModel
    var body: some View {
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
    }
}

struct CalorieHeaderProfileView: View{
    @EnvironmentObject var model:DataModel
    var body: some View{
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
    }
}
