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
    var body: some View {
        ZStack{
            Button {
                print(item.title)
            } label: {
                VStack{
                    HStack{
                        Text(item.title)
                            .font(.headline)
                        Text("\(item.time.formatted(date: .omitted, time: .shortened))")
                            .font(.subheadline)
                    }
                    HStack{
                        Text("Cal: \(item.totalCalories)")
                            .font(.headline)
                        Text("Protein: \(item.protienCount)")
                            .font(.headline)
                        Text("Carbs: \(item.carbCount)")
                            .font(.headline)
                        Text("Fat: \(item.fatCount)")
                            .font(.headline)
                        
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

