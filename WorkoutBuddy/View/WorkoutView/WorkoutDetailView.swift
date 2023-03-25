//
//  WorkoutDetailView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/24/23.
//

import SwiftUI

struct WorkoutDetailView: View {
    var title:String
    var workouts:[workout]
    @EnvironmentObject var model:DataModel
    var body: some View {
            VStack{
                List{
                    ForEach(workouts){item in
                        HStack{
                            VStack{
                                HStack{
                                    Text(item.title)
                                }
                                HStack{
                                    Text("Reps: \(item.reps)")
                                    Text("Sets: \(item.set)")
                                    if let weight = item.weight{
                                        Text("Weight: \(weight)")
                                    }
                                }
                                
                                if item.weight == nil{
                                    Text("No Weights Needed")
                                        .foregroundColor(.red)
                                }
                            }
                            
                            
                        }
                        
                    }
                }
            }
            .navigationTitle(title)
    }
}

