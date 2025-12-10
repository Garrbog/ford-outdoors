//
//  CompassView.swift
//  Ford Outdoors
//
//  Created by William Garrett Ford on 12/9/25.
//

import SwiftUI

struct CompassView: View {
    @State private var heading: Double = 0
    var body: some View {
        VStack(spacing: 24) {
            Text("Compass")
                .font(.largeTitle.bold())
            
            // Circle
            ZStack {
                Circle()
                    .stroke(lineWidth: 4)
                    .frame(width: 220, height: 220)
                    .shadow(radius: 5)
                // Arrow
                Image(systemName: "location.north.fill")
                    .font(.system(size: 80))
                    .rotationEffect(.degrees(heading))
                    .shadow(radius: 5)
            }
            // Show heading + slider to spin it
            VStack(spacing: 8) {
                Text("\(Int(heading))°")
                    .font(.title2.monospaced())
                
                Slider(value: $heading, in: 0...360, step: 1)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    CompassView()
        .preferredColorScheme(.light)
}
