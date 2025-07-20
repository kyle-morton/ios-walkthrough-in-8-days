//
//  ContentView.swift
//  War Card Game (Day4+)
//
//  Created by Kyle Morton on 7/19/25.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                Image("button")
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundStyle(Color.white)
                Spacer()
            }
                
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
