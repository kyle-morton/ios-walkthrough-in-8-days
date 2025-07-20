//
//  ContentView.swift
//  War Card Game (Day4+)
//
//  Created by Kyle Morton on 7/19/25.
//

import SwiftUI

struct ContentView: View {
    
    // @State declares something the UI depends on that might change state
    @State var playerCard = "card14"
    @State var cpuCard = "card14"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack { // 'depth-stack'
            Image("background-plain")
                .resizable() // if you leave this off, it'll show the image in it's full resolution (use this instead)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image(playerCard)
                    
                    Spacer()
                    
                    Image(cpuCard)
                    
                    Spacer()
                }
                
                Spacer()
                
                Button(
                    action: dealCards,
                    label: {
                        Image("button")
                    }
                )
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                }
                .foregroundStyle(Color.white)
                Spacer()
            }
                
        }
        
    }
    
    
    func dealCards() {
        print("Deal Cards!")
        
        //Randomize the player/cpu cards
        let randomPlayerCard = Int.random(in: 2...14)
        playerCard = "card" + String(randomPlayerCard)
        
        let randomCpuCard = Int.random(in: 2...14)
        cpuCard = "card" + String(randomCpuCard)
        
        // update the scores
        if (randomPlayerCard > randomCpuCard){
            playerScore+=1
        }
        else if (randomCpuCard > randomPlayerCard){
            cpuScore+=1
        }
            
    }
}



//struct KMAttemptContentView: View {
//    var body: some View {
//        VStack {
//            HStack{
//                Spacer()
//                Image("logo")
//                Spacer()
//            }
//            HStack{
//                Spacer()
//                Image("card2")
//                Spacer()
//                Image("card3")
//                Spacer()
//            }
//            .padding(25.0)
//            
//            Image("button")
//            
//            HStack{
//                VStack{
//                    Text("Player")
//                        .font(.title)
//                        .padding()
//                    Text("0")
//                        .font(.title)
//                }
//                .padding()
//                
//                VStack{
//                    Text("CPU")
//                        .font(.title)
//                        .padding()
//                    Text("0")
//                        .font(.title)
//                    
//                }
//                .padding()
//                
//            }.foregroundStyle(Color.white)
//        }.background(Image("background-cloth"))
//    }
//}

#Preview {
    ContentView()
}
