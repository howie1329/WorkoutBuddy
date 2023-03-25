//
//  Meals.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/22/23.
//

import Foundation

struct Meal: Hashable, Identifiable{
    
    var id: UUID
    var databaseID:String
    var title:String
    var mealType:String
    var totalCalories:Int
    var protienCount:Int
    var carbCount:Int
    var fatCount:Int
    var time:Date
    
}

struct DayCal: Hashable, Identifiable{
    
    var id: UUID
    var day:Date
    var food:[Meal]
    var totalCalories:Int
    var protienCount:Int
    var carbCount:Int
    var fatCount:Int
    
}
