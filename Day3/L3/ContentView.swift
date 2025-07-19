//
//  ContentView.swift
//  L3
//
//  Created by Kyle Morton on 7/19/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color(.mint)
                    .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0){
                Image("niagarafalls")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15);
                    
                HStack{
                    Text("Niagara Falls")
                        .font(.title2)
                        .fontWeight(.bold);
                    
                    Spacer() // takes up as much space as it can
                    
                    VStack {
                        HStack {
                            Image(systemName: "star.fill");
                            Image(systemName: "star.fill");
                            Image(systemName: "star.fill");
                            Image(systemName: "star.fill");
                            Image(systemName: "star.leadinghalf.filled");
                        }

                        Text("Reviews: 361")
                    }
                    .foregroundStyle(.orange)
                    .font(.caption);
                 
                }
                
                Text("It's a big waterfall");
                HStack {
                    Spacer();
                    Image(systemName: "fork.knife");
                    Image(systemName: "binoculars.fill");
                }
                .foregroundStyle(.gray)
                .font(.caption);
            }
            .padding() // padding for the vstack container
            .background(
                Rectangle()
                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    .shadow(radius: 15) // creates card-like style
            )
            .padding() // padding for the rectangle background
        }
        

    }
}

#Preview {
    ContentView()
}
