//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Milan Labus on 18/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var shapes = ["Rock", "Paper", "Scissors"]
    
    @State private var computerString = ""

    @State private var usersChoice = ""
    
    @State private var userScore = 0
    @State private var computerScore = 0
    @State private var roundCount = 0
    var body: some View {
        ZStack {
//            RadialGradient(stops: [
//                .init(color: Color(red: 0.6, green: 0.2, blue: 0.45), location: 0.3),
//                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
//            ], center: .top, startRadius: 200, endRadius: 700)
//            .ignoresSafeArea()
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Make your Selection")
                    .font(.title.bold())
                    .foregroundStyle(.white)
                Spacer()
                ForEach(0..<3) { num in
                    Button {
                        shapePicked(num)

                    }
                    label: {
                        Text(shapes[num])
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                    }
                    
                }
                
                Spacer()
                Text("User Choice: \(usersChoice)")
                           .foregroundStyle(.white)
                           .font(.title.bold())
                
                Spacer()
                Text("Computer Choice: \(computerString)")
                           .foregroundStyle(.white)
                           .font(.title.bold())
                
                
                Spacer()
                Text("User Score: \(userScore)")
                           .foregroundStyle(.white)
                           .font(.title.bold())
                Spacer()
                Text("Computer Score: \(computerScore)")
                           .foregroundStyle(.white)
                           .font(.title.bold())
                Spacer()
                
                Text("Round Count: \(roundCount)")
                           .foregroundStyle(.white)
                           .font(.title.bold())
                Spacer()
                
           

                
                
                
            }
            
        }
    }
    func shapePicked(_ number: Int) {
        usersChoice = shapes[number]
        computerString = shapes[ Int.random(in: 0...2)]
        roundCount = roundCount+1
        
    }
}



#Preview {
    ContentView()
}
