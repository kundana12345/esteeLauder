//
//  homePage.swift
//  esteeLauder
//
//  Created by Kundana Addala on 7/31/23.
//

import SwiftUI

struct homePage: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    var body: some View {

        ZStack{
            NavigationStack{
                Color(red: 230/255, green: 49/255, blue: 83/255)
                    .ignoresSafeArea()
                    .overlay(
                        ScrollView{
                            LazyVStack(spacing: 20) {
                                
                                Image("betterHeading")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    
                                VStack{
                                    HStack{
                                        Image("cleanser")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            
                                        NavigationLink(destination: cleanser()) {
                                            Image("cleanserNav")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                        }
                                        .padding(.horizontal)
                                    }
                                    HStack {
                                        NavigationLink(destination: blah()) {
                                            Image("aLotionNav")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .padding(.top)
                                        }
                                        Image("aLotion")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            
                                    }
                                    HStack{
                                        Image("mask")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            
                                        NavigationLink(destination: imagCar()) {
                                            Image("maskNav")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                        }
                                    }
                                    HStack{
                                        NavigationLink(destination: imagCar2()) {
                                            Image("rLotionNav")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                        }
                                        Image("rLotion")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            
                                    }
                                }
                                
                            }
                        }
                    )
            }
        }
    }
}
    


struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
    }
}
