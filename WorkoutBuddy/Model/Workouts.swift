//
//  Workouts.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/24/23.
//

import Foundation

struct workout: Hashable, Identifiable{
    
    var id:UUID
    var title:String
    var weight:Int?
    var reps:Int
    var set:Int
}

struct workoutPlan: Hashable, Identifiable{
    
    var id:UUID
    var title:String
    var plan:[workout]
}
