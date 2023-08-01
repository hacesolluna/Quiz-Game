//
//  ContentView.swift
//  Quiz Game
//
//  Created by Sunny Moon on 7/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("quizb")
                    .resizable()
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Welcome to Quiz Game!")
                        .font(.title)
                    Spacer()
                    Text("⬇️⬇️⬇️⬇️")
                        .font(.title2)
                }
//                .padding()
//                .background(.white)
//                .cornerRadius(20)
                .padding()
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: FirstQuestion()) {
                            
                            Text("Number 1")
                                .font(.title3)
                                .fontWeight(.semibold)
//                                .foregroundColor(Color.purple)
                            
                        }
                    }
                }
                
                
            }
//            .navigationTitle("Home")
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
