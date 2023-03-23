//
//  Meals.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/22/23.
//

import Foundation

struct Meal: Hashable, Identifiable{
    
    var id: UUID
    var title:String
    var mealType:String
    var totalCalories:Int
    var protienCount:Int
    var carbCount:Int
    var fatCount:Int
    
}
