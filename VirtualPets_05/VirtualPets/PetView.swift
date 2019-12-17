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
    
    var body: some View {
        VStack {
            ProgressBar(barWidth: UIScreen.main.bounds.width * 0.9, barHeight: 50, barRatio: $petHappiness)
                
            Image("Dog")
                .resizable()
                .frame(width: 150, height: 150)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PetView()
    }
}
