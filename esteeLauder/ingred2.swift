//
//  ingred2.swift
//  esteeLauder
//
//  Created by Kundana Addala on 8/1/23.
//

import SwiftUI
import AVKit

struct ingred2: View {
    @State private var currentIngridImageIndex = 0
    private let images = ["betterIngred1", "betterIngred2", "betterIngred3", "betterIngred4", "betterIngred5"]
    @State private var compareContrastImage = "ingredComp"

    var body: some View {

            
        ZStack{
            NavigationStack{
                Color(red: 252/255, green: 179/255, blue: 206/255)
                    .ignoresSafeArea()
                    .overlay(
                        ScrollView{
                            LazyVStack{
                                NavigationLink(destination: homePage()) {
                                    Image(systemName: "house.fill")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(Color(red: 0.855, green: 0.1843137254901961, blue: 0.34509803921568627))
                                        .frame(width: 50.0)
                                        
                                        
                                }
                                
                                Image("ingredHeading")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                VStack {
                                    Image(images[currentIngridImageIndex])
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fill)
                                        .padding(.horizontal)
                                        
                                        
                                        .padding(.vertical, 50.0)
                                    Image(compareContrastImage)
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.horizontal)
                                    Button("v i e w   w i t h o u t s") {
                                        changeImage()
                                    }
                                    .frame(width: 500.0)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                    .dynamicTypeSize(/*@START_MENU_TOKEN@*/.accessibility3/*@END_MENU_TOKEN@*/)
                                            
                                    
                                    
                                } //vstack
                                .onAppear {startTimer()}

                            } //lazyVstack
                        } //scroll view
                    ) //overlay
            } // nav stack
        } //zstack
    } // body view

    private func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { _ in
            withAnimation {
                currentIngridImageIndex = (currentIngridImageIndex + 1) % images.count
            }
        }
    }
    
    private func changeImage() {
        if compareContrastImage == "ingredComp" {
            compareContrastImage = "ingredContr"
        } else if compareContrastImage == "ingredContr" {
            compareContrastImage = "ingredComp"
        }
    }
    

} // whole view



struct ImageCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        ingred2()
    }
}
