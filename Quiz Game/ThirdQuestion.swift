//
//  ThirdQuestion.swift
//  Quiz Game
//
//  Created by Sunny Moon on 7/28/23.
//

import SwiftUI

struct ThirdQuestion: View {
    
    @State private var color=""
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
                Text("What's your favorite color?")
                    .font(.title)
                Button("Red") {
                    color="❤️"
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                Button("Green") {
                    color="💚"
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
                Button("Blue") {
                    color="💙"
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                Text(color)
                    .font(.largeTitle)
                Spacer()
            }
            .padding()
            //        .toolbar {
            //            ToolbarItemGroup(placement: .status) {
            //                NavigationLink(destination: SecondQuestion()) {
            //                    Text("Number 2")
            //                        .font(.title3)
            //                }
        }
//            }
//        }
    }
}

struct ThirdQuestion_Previews: PreviewProvider {
    static var previews: some View {
        ThirdQuestion()
    }
}
