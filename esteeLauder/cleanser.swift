//
//  cleanser.swift
//  esteeLauder
//
//  Created by Kundana Addala on 7/31/23.
//

import SwiftUI

struct ImageCarousel: View {
    @State private var currentImageIndex = 0
    let cleanserImages : [String]


    var body: some View {
        ZStack{
            NavigationStack{
                Color(red: 219/255, green: 171/255, blue: 183/255)
                
                    .ignoresSafeArea()
                    .overlay(
                LazyVStack(spacing: 20) {
                    
                    
                    Image("cleanserHeading")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, -70.0)
                        
                        
                    VStack{
                        Image(cleanserImages[currentImageIndex])
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.top, 10.0)
                            
                            
                    }
                    .onAppear(perform: startTimer)

                    .padding(.horizontal)
                    NavigationLink(destination: ingred()) {
                        Image("naturalIngredNav")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                    }

                })
            }
        }
    }
    private func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { timer in
            withAnimation {
                currentImageIndex = (currentImageIndex + 1) % 4
            }
        }
    }
}
    

struct cleanser: View {
    var body: some View {
        ImageCarousel(cleanserImages: ["cleanser1", "cleanser2", "cleanser3", "cleanser4"])
    }
}

struct cleanser_Previews: PreviewProvider {
    static var previews: some View {
        cleanser()
    }
}
