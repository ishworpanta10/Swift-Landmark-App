//
//  ContentView.swift
//  Landmarks
//
//  Created by Ishwor on 06/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
            
            CircleImage().offset(y:-130).padding(.bottom,-130)
            
            VStack(alignment: .leading){
                Text("Kathmandu Fun Park").font(.title)
                
                HStack{
                    Text("Pradarshani Marg, Kathmandu").font(.subheadline)
                    Spacer()
                    Text("Kathmandu").font(.subheadline)
                    
                }
                Spacer().frame(height: 20)
                
                Divider()
                
                Spacer().frame(height: 20)
                
                Text("About Kathmandu Fun Park".uppercased()).font(.title2)
                
                Text("This is located in kathmandu valley and famous for different fun games for children")
                
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
