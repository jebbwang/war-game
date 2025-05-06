//
//  ContentView.swift
//  War Card Game
//
//  Created by Jeff Wang on 5/5/25.
//

import SwiftUI

struct ContentView: View {
    
    var cards = [2: "card2",
                 3: "card3",
                 4: "card4",
                 5: "card5",
                 6: "card6",
                 7: "card7",
                 8: "card8",
                 9: "card9",
                 10: "card10",
                 11: "card11",
                 12: "card12",
                 13: "card13",
                 14: "card14"
                ]
    
    @State private var playerScore = 0
    @State private var computerScore = 0
    @State private var playerCardImage = "card12"
    @State private var computerCardImage = "card13"
    @State private var showTieAlert = false
    
    func dealCards() {
        let playerCard = randomCard()
        let computerCard = randomCard()
        
        withAnimation(.linear)  {
            playerCardImage = playerCard.1
            computerCardImage = computerCard.1
            
            if playerCard.0 > computerCard.0 {
                playerScore += 1
            }
            else if playerCard.0 < computerCard.0 {
                computerScore += 1
            }
            else {
                print("Tie!")
                showTieAlert = true
            }
        }
    }
    
    // picks a random card (key/value pair from the cards dict)
    func randomCard() -> (Int, String) {
        if let card = cards.randomElement( ) {
            return (card.key, card.value)
        }
        return (0, "empty deck")
    }
    
    var body: some View {
        
        
        ZStack {
                
            
            VStack {
                Spacer()
                
                Image("logo")
                    .padding(.top , 50)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    CardView(imageName: $playerCardImage)
                    
                    Spacer()
                    
                    CardView(imageName: $computerCardImage)
                    
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    dealCards()
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom , 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom , 10)
                        Text(String(computerScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
            }
            .background(Image("background-plain"))
            .ignoresSafeArea()
            
            
        }
        .alert("It's a tie!", isPresented: $showTieAlert) {
            Button("OK", role: .cancel) {}
        }
        
    }
}

#Preview {
    ContentView()
}
