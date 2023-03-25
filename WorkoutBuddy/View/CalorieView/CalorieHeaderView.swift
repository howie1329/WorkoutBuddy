//
//  CalorieHeaderView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/24/23.
//

import SwiftUI

struct CalorieHeaderView: View {
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
            
        }
    }
}
