//
//  ProgressBar.swift
//  VirtualPets
//
//  Created by Max Gillespie on 12/16/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ProgressBar: View {
    var barWidth:CGFloat
    var barHeight:CGFloat
    
    @Binding var barRatio: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .opacity(0.1)
                .frame(width: barWidth, height: 50)
            Rectangle()
                .frame(width: barWidth * barRatio, height: 50)
        }
        .padding()
    }
}

struct ProgressBar_Previews: PreviewProvider {
    @State static var ratio:CGFloat = 0.2
    
    static var previews: some View {
        ProgressBar(barWidth: 350, barHeight: 50, barRatio: $ratio)
    }
}
