
//  aLotion.swift
//  esteeLauder
//
//  Created by Kundana Addala on 8/1/23.


//import SwiftUI
//
//struct aLotion: View {
//    var body: some View {
//
//        VStack{
//
//
//        }
//    }
//}
//
//struct aLotion_Previews: PreviewProvider {
//    static var previews: some View {
//        aLotion()
//    }
//}

import SwiftUI

struct aLotion: View {
    @State private var currentImageIndex = 0
    let aLotionImages : [String]


    var body: some View {
        ZStack{
            NavigationStack{
                Color(red: 219/255, green: 171/255, blue: 183/255)
                
                    .ignoresSafeArea()
                    .overlay(
                        ScrollView{
                            LazyVStack(spacing: 20) {
                                
                                
                                Image("aLotionHeader")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                
                                
                                VStack{
                                    Image(aLotionImages[currentImageIndex])
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.top, 10.0)
                                    
                                    
                                }
                                .onAppear(perform: startTimer)
                                .padding(.horizontal)
                                
                                Image("aLotionInfo")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                
                                NavigationLink(destination: ingred()) {
                                    Image("naturalIngredNav")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.all)
                                }
                                
                            }
                        }
                    )
            }
        }
    }
    private func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
            withAnimation {
                currentImageIndex = (currentImageIndex + 1) % 4
            }
        }
    }
}
    

struct blah: View {
    var body: some View {
        aLotion(aLotionImages: ["aLotion1", "aLotion2", "aLotion3", "aLotion4"])
    }
}

struct aLotion_Previews: PreviewProvider {
    static var previews: some View {
        blah()
    }
}
