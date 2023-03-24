//
//  DataModel.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/22/23.
//

import Foundation
import Firebase

class DataModel: ObservableObject {
    
    @Published var meals:[Meal] = [Meal(id: UUID(),title: "Chicken", mealType: "Breakfast", totalCalories: 892, protienCount: 73, carbCount: 100, fatCount: 73), Meal(id: UUID(),title: "Chicken", mealType: "Breakfast", totalCalories: 892, protienCount: 73, carbCount: 100, fatCount: 73)]
    
    @Published var dayMeal:DayCal = DayCal(id: UUID(), day: Date.now, food:[], totalCalories: 0,protienCount: 0,carbCount: 0,fatCount: 0)
    
    init(){
        getData()
    }
    
    
    func getData(){
        let db = Firestore.firestore()
        
        let collections = db.collection("Main")
        
        collections.getDocuments { (snapshot, error) in
            
            if let error = error {
                print(error.localizedDescription)
            }
            else if let snapshot = snapshot {
                
                for doc in snapshot.documents{
                    let id = doc.documentID
                    
                    let something = db.collection("Main").document(id).collection("Meals")
                    
                    something.getDocuments { (snapshots, errors) in
                        if error == nil{
                            if let snapshots = snapshots {
                                
                                var todayMeals:[Meal] = []
                                
                                for doc in snapshots.documents{
                                    let id = doc.documentID
                                    let data = doc.data()
                                    
                                    let title = data["title"] as? String ?? ""
                                    let mealType = data["mealType"] as? String ?? ""
                                    let calories = data["Calories"] as? Int ?? 0
                                    let carbs = data["carbs"] as? Int ?? 0
                                    let fat = data["fat"] as? Int ?? 0
                                    let protein = data["protein"] as? Int ?? 0
                                    let date = data["date"] as? Date ?? Date.now
                                    
                                    todayMeals.append(Meal(id: UUID(), title: title, mealType: mealType, totalCalories: calories, protienCount: protein, carbCount: carbs, fatCount: fat))
                                    
                                    print("It worked:\(id)")
                                    print(title)
                                    
                                }
                                
                                self.dayMeal.food = todayMeals
                            }
                        }
                    }
                    
                    
                    
                    
                    let data = doc.data()
                    
                }
            }
        }
    }
    
    
}
