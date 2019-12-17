//
//  ContentView.swift
//  VirtualPets
//
//  Created by Max Gillespie on 12/15/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

// Covering in this section:
// - Texts
// - VStacks, HStacks, ZStacks
// - Buttons
// - Shapes (Rectangle etc.)

import SwiftUI

struct PetView: View {
    @State var petHappiness:CGFloat = 0.3
    @State var petFoodLevel:CGFloat = 0.1
    
    var body: some View {
        VStack {
            Spacer()
            
            ProgressBar(barWidth: UIScreen.main.bounds.width * 0.9, barHeight: 50, barRatio: $petHappiness)
                
            Image("Dog")
                .resizable()
                .frame(width: 150, height: 150)
            
            Spacer()
            
            ProgressBar(barWidth: UIScreen.main.bounds.width * 0.9, barHeight: 33, barRatio: $petFoodLevel)
            
            Button(action: {
                print("Feed")
            }, label: {
                Text("Feed")
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: 50)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(radius: 2)
            })
            
            Spacer()
            
            Button(action: {
                print("Play")
            }, label: {
                Text("Play")
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: 50)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(radius: 2)
            })
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PetView()
    }
}
