//
//  CaloriesRowView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/23/23.
//

import SwiftUI

struct CaloriesRowView: View {
    var title:String
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
                    Text(title)
                        .font(.headline)
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
                .padding(.horizontal)
                Image(systemName: "chevron.right")
            }
            .buttonStyle(.borderedProminent)
        }
        
        
    }
}

