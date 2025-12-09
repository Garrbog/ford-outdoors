//
//  HomePage.swift
//  Ford Outdoors
//
//  Created by William Garrett Ford on 12/9/25.
//


import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Ford Outdoors")
                    .font(.largeTitle.bold())
                
                NavigationLink("Open Compass") {
                    CompassView()
                }
                .buttonStyle(.borderedProminent)
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    HomePage()
}

