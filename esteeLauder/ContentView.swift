//
//  ContentView.swift
//  esteeLauder
//
//  Created by Kundana Addala on 7/31/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            NavigationStack{
                Color(red: 230/255, green: 233/255, blue: 240/255)
                    .ignoresSafeArea()
                    .overlay(
                LazyVStack(spacing: 20) {
                    Image("heading")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Image("allProducts")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal)
                        .frame(height: 500.0)
                        
                        
                    NavigationLink(destination: homePage()) {
                        Image("navLink")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)

                    }
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
