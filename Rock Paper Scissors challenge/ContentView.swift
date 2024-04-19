//
//  ContentView.swift
//  Rock Paper Scissors challenge
//
//  Created by Adam Wilson on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    
//  What cpu & user can select
    
    @State private var RPS = ["Rock", "Paper", "Scissors"]
    
//    placeholder alerts for buttons
    
    @State private var alertRock = false
    
    @State private var alertPaper = false
    
    @State private var alertScissors = false
    
//  Win or lose state
    
    @State private var WorL = ["Win", "Lose"]
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color.gray
                
                VStack {
                    
                    // Rock button
                    
                    Button("Rock") {
                        
                        alertRock = true
                        
                    }
                    .background(.black)
                    .foregroundColor(.cyan)
                    .font(.title)
                    .alert("You picked Rock.", isPresented: $alertRock) {
                        
                        Button("OK", role: .cancel) { }
                        
                    }
                    
                    Spacer().frame(height: 15)
                   
                    Button("Paper") {
                        
                        alertPaper = true
                        
                    }
                    .background(.black)
                    .foregroundColor(.cyan)
                    .font(.title)
                    .alert("You picked Paper.", isPresented: $alertPaper) {
                        
                        Button("Ok", role: .cancel) {   }
                        
                       
                    }
                    
                    Spacer().frame(height: 15)
                    
                    Button("Scissors") {
                        
                        alertScissors = true
                        
                    }
                    .background(.black)
                    .foregroundColor(.cyan)
                    .font(.title)
                    .alert("You picked scissors.", isPresented: $alertScissors) {
                        
                        Button("OK", role: .cancel) {   }
                        
                    }
                }
                .padding()
                
                
                
              
                    
                }
            }
            
        }
        
    }
    
// game logic

func cpu_choice() {
    
  
    
}


#Preview {
    ContentView()
}
