//
//  FirstQuestion.swift
//  Quiz Game
//
//  Created by Sunny Moon on 7/28/23.
//

import SwiftUI

struct FirstQuestion: View {
    @State private var weather=""
    
    var body: some View {
        ZStack {
            Image("quizb")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 20.0) {
                NavigationLink(destination:ContentView()){
                    Text("🏠 Home")
//                        .foregroundColor(Color.purple)
                }
                Spacer()
                Text("What's your favorite weather?")
                    .font(.title)
                Button("Sunny") {
                    weather="☀️"
                }
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                Button("Rainy") {
                    weather="🌧️"
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                Button("Snowy") {
                    weather="☃️"
                }
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                Text(weather)
                    .font(.largeTitle)
                Spacer()
                
            }
            .padding()
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: SecondQuestion()) {
                        Text("Number 2 ➡️")
                            .font(.title3)
                            .fontWeight(.semibold)
//                        .foregroundColor(Color.purple)
                        
                    }
                }
            }
        }
//        .navigationTitle("Question 1")
    }
}

struct FirstQuestion_Previews: PreviewProvider {
    static var previews: some View {
        FirstQuestion()
    }
}
