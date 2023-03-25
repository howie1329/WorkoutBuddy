//
//  CaloriesRowView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/23/23.
//

import SwiftUI

struct CaloriesRowView: View {
    @EnvironmentObject var model:DataModel
    var item:Meal
    var title:String
    var time:Date
    var calories:Int
    var protien:Int
    var carbs:Int
    var fat:Int
    var body: some View {
        ZStack{
            Button {
                print(title)
            } label: {
                VStack{
                    HStack{
                        Text(title)
                            .font(.headline)
                        Text("\(time.formatted(date: .omitted, time: .shortened))")
                            .font(.subheadline)
                    }
                    HStack{
                        Text("Cal: \(calories)")
                            .font(.subheadline)
                        Text("Protein: \(protien)")
                            .font(.subheadline)
                        Text("Carbs: \(carbs)")
                            .font(.subheadline)
                        Text("Fat: \(fat)")
                            .font(.subheadline)
                        
                    }
                    
                }
                
            }
            .swipeActions {
                Button(role:.destructive) {
                    model.deleteCal(id: item.databaseID)
                } label: {
                    Image(systemName: "pencil")
                }

            }
        }
        
        
    }
}

