//
//  rLotion.swift
//  esteeLauder
//
//  Created by Kundana Addala on 8/1/23.
//

//import SwiftUI
//
//struct rLotion: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct rLotion_Previews: PreviewProvider {
//    static var previews: some View {
//        rLotion()
//    }
//}

import SwiftUI

struct rLotion: View {
    @State private var currentImageIndex = 0
    let rImages : [String]


    var body: some View {
        ZStack{
            NavigationStack{
                Color(red: 219/255, green: 171/255, blue: 183/255)
                
                    .ignoresSafeArea()
                    .overlay(
                        ScrollView{
                            LazyVStack(spacing: 20) {
                                
                                
                                Image("rLotionHeader")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                
                                
                                VStack{
                                    Image(rImages[currentImageIndex])
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
    

struct imagCar2: View {
    var body: some View {
        rLotion(rImages: ["rLotion1", "rLotion4", "rLotion2", "rLotion3", "rLotion5"])
    }
}

struct rLotion_Previews: PreviewProvider {
    static var previews: some View {
        imagCar2()
    }
}
