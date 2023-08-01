//
//  SecondQuestion.swift
//  Quiz Game
//
//  Created by Sunny Moon on 7/28/23.
//

import SwiftUI

struct SecondQuestion: View {
    
    @State private var animal=""
    var body: some View {
        ZStack {
            Image("quizb")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 20.0) {
                NavigationLink(destination:ContentView()){
                    Text("🏠 Home ")
//                        .foregroundColor(Color.purple)
                }
                Spacer()
                Text("What's your favorite pet?")
                    .font(.title)
                Button("Puppy") {
                    animal="🐶"
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                Button("Kitty") {
                    animal="🐱"
                }
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                Button("Fishie") {
                    animal="🐟"
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                Text(animal)
                    .font(.largeTitle)
                Spacer()
            }
            .padding()
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: ThirdQuestion()) {
                        Text("Number 3 ➡️")
                            .font(.title3)
                            .fontWeight(.semibold)
//                            .foregroundColor(Color.purple)
                    }
                }
            }
        }
    }
}

struct SecondQuestion_Previews: PreviewProvider {
    static var previews: some View {
        SecondQuestion()
    }
}
