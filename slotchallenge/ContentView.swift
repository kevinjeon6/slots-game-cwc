//
//  ContentView.swift
//  slotchallenge
//
//  Created by Kevin Mattocks on 2/7/22.
//

import SwiftUI

struct ContentView: View {
    @State var playerScore = 0
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
  
    var body: some View {
        
        
        VStack {
            
            Text("SwiftUI Slots!")
                .padding(.top, 20)
            .font(.largeTitle)
            Spacer()
            
            Text("Credits: \(playerScore)")
                .padding()
        
            
            HStack{
                Image("fruit\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(slot2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(slot3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
         
            Spacer()
            Button {
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2 && slot2 == slot3{
                    playerScore += 20
                } else {
                    playerScore -= 5
                }
                
                
                
            } label: {
                Text("Spin")
            }
            .padding(.horizontal, 40)
            .font(.title)
            .background(.red)
            .cornerRadius(20.0)
            .foregroundColor(.white)
            
            Spacer()
            
        
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
