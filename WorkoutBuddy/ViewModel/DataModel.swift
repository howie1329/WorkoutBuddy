//
//  DataModel.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/22/23.
//

import Foundation

class DataModel: ObservableObject {
    
    @Published var meals:[Meal] = [Meal(id: UUID(),title: "Chicken", mealType: "Breakfast", totalCalories: 892, protienCount: 73, carbCount: 100, fatCount: 73), Meal(id: UUID(),title: "Chicken", mealType: "Breakfast", totalCalories: 892, protienCount: 73, carbCount: 100, fatCount: 73)]
    
}
