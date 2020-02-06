//
//  DetailView.swift
//  Movie App
//
//  Created by Frank Bara on 2/6/20.
//  Copyright © 2020 BaraLabs. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            PosterView()
            TitleView()
            FilmInfoView()
            RatingsView()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

struct TitleView: View {
    var body: some View {
        HStack {
            Text("How to Train Your Dragon 3")
                .fontWeight(.heavy)
                .padding(.leading)
            
            Spacer()
            
            Image(systemName: "bookmark")
                .font(.title)
                .padding(.top, 4)
                .foregroundColor(.yellow)
                .padding(.trailing)
        }
    }
}

struct FilmInfoView: View {
    var body: some View {
        HStack {
            Text("1h 44m | Animation, Action | 1 March 2019")
                .foregroundColor(.secondary)
                .padding(.leading)
            Spacer()
        }
    }
}

struct RatingsView: View {
    var body: some View {
        HStack {
            ForEach(0..<3) { item in
                Image(systemName: "star.fill")
                
            }
            
            Image(systemName: "star.lefthalf.fill")
            Image(systemName: "star")
            
            Text("(3.5)")
                .bold()
                .padding(.leading)
            Spacer()
        }
        .foregroundColor(.yellow)
    }
}
