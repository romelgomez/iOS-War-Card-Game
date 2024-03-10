//
//  ContentView.swift
//  War Card Game
//
//  Created by romel javier gomez herrera on 9/03/24.
//

import SwiftUI

struct ContentView: View {
    
    func random () -> Int {
        return Int.random(in: 2...12)
    }
    
    @State var playerCard = "card" + String(Int.random(in: 2...12))
    @State var cpuCard = "card" + String(Int.random(in: 2...12))
    @State var playerScore = Int.random(in: 2...12)
    @State var cpuScore = Int.random(in: 2...12)
    
    var body: some View {
        VStack {
            
            ZStack {
                Image("background")
                
                VStack {
                    
                    Spacer()
                    
                    VStack () {
                        
                        Image("logo")
                        
                    }
                    
                    
                    Spacer()
                    
                    HStack () {
                        Spacer()
                        Image(playerCard)
                        Spacer()
                        Image(cpuCard)
                        Spacer()
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                        let playerRan = random()
                        let cpuRan = random()
                       
                        playerCard = "card" + String(playerRan)
                        cpuCard = "card" + String(cpuRan)
                        
                        
                        if (playerRan > cpuRan) {
                            playerScore += 1
                        } else {
                            cpuScore += 1
                        }
                        
                        
                    }, label: {
                        Image("dealbutton")
                    })
                    
                    
                    Spacer()
                    
                    
                    HStack () {
                        Spacer()
                        
                        VStack {

                            Text("Player")
                                .font(.title3)
                                .foregroundStyle(.white)

                            Text(String(playerScore))
                                .font(.title)
                                .foregroundStyle(.white)
                        }
                        
                        
                        Spacer()
                        
                        VStack {
                            
                            Text("CPU")
                                .font(.title3)
                                .foregroundStyle(.white)
                            
                            Text(String(cpuScore))
                                .font(.title)
                                .foregroundStyle(.white)
                            
                        }
                        
                        Spacer()
                    }
                    
                    Spacer()
                }
            }
            
            

        }
    }
    
    
}

#Preview {
    ContentView()
}


