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
    // local variables go here
    
    var body: some View {
        VStack {
            Button(action: {
                print("hello!")
            }, label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.black)
                        .frame(width: 100, height: 50)
                        .cornerRadius(10)
                    Text("say hello")
                        .foregroundColor(.white)
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PetView()
    }
}
