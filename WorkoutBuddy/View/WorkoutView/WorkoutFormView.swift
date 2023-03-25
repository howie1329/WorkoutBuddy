//
//  WorkoutFormView.swift
//  WorkoutBuddy
//
//  Created by Howard Thomas on 3/25/23.
//

import SwiftUI

struct WorkoutFormView: View {
    @EnvironmentObject var model:DataModel
    @State var title = ""
    @State var set = 0
    @State var reps = 0
    @State var weight = 0
    var body: some View {
        VStack{
            Form{
                Section(header:Text("Title")){
                    TextField("Title", text: $title)
                }
                Section(header:Text("Details")){
                    Stepper("Sets: \(set)", value: $set)
                    Stepper("Reps: \(reps)", value: $reps)
                    Stepper("Weight: \(weight) lbs", value: $weight, step: 5)
                }
                
                Button() {
                    print("Complete")
                } label: {
                    Image(systemName: "checkmark")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
            }
        }.navigationTitle("New Workout")
    }
}

struct WorkoutFormView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutFormView()
    }
}
