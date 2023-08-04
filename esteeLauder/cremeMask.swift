//
//  cremeMask.swift
//  esteeLauder
//
//  Created by Kundana Addala on 8/1/23.
//

import SwiftUI

struct cremeMask: View {
    @State private var currentImageIndex = 0
    let cremeImages : [String]


    var body: some View {
        ZStack{
            NavigationStack{
                Color(red: 219/255, green: 171/255, blue: 183/255)

                    .ignoresSafeArea()
                    .overlay(
                        ScrollView{
                            LazyVStack(spacing: 20) {


                                Image("cremeHeading")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)


                                VStack{
                                    Image(cremeImages[currentImageIndex])
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
        Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { timer in
            withAnimation {
                currentImageIndex = (currentImageIndex + 1) % 4
            }
        }
    }
}


struct imagCar: View {
    var body: some View {
        cremeMask(cremeImages: ["creme1", "creme4", "creme2", "creme3"])
    }
}

struct cremeMask_Previews: PreviewProvider {
    static var previews: some View {
        imagCar()
    }
}
