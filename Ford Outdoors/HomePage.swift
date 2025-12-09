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
                Text("Welcome to Ford Outdoors")

                NavigationLink("Lets begin!") {
                    BeginView()
                }
            }
            .padding()
        }
    }
}

struct BeginView: View {
    var body: some View {
        Text("This is the begin page!")
    }
}

#Preview {
    HomePage()
}

