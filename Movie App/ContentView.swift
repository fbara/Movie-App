//
//  ContentView.swift
//  Movie App
//
//  Created by Frank Bara on 2/6/20.
//  Copyright © 2020 BaraLabs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView()) {
                    PosterView()
                    
                    
                    Text("How to Train Your Dragon 3")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                
            }
        }
        .padding(.leading)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PosterView: View {
    var body: some View {
        Image("poster")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(12)
            .padding()
    }
}
