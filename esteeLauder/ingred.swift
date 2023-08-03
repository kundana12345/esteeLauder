//
//  ingred.swift
//  esteeLauder
//
//  Created by Kundana Addala on 8/1/23.
//

//import SwiftUI
//
//struct ingred: View {
//    var body: some View {
//        NavigationStack {
//            VStack {
//            }
//        }
//    }
//}
//
//struct ingred_Previews: PreviewProvider {
//    static var previews: some View {
//        ingred()
//    }
//}
import SwiftUI


struct ImageCarousel2: View {
    @State private var currentImageIndex = 0
    let ingredImages : [String]
    
    var body: some View {
//    ScrollView {
        ZStack{
            NavigationStack{
                Color(red: 252/255, green: 179/255, blue: 206/255)
                    .ignoresSafeArea()
                    .overlay(
                        ScrollView {
                            
                            LazyVStack(spacing: 20) {
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
                                    
                                
                                
                                VStack{
                                    Image(ingredImages[currentImageIndex])
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.top, -10.0)
                                    
                                    Button(action: {
                                        if let url = URL(string: "https://www.sandandsky.com/blogs/news/sea-kelp-for-skin") {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Image("sk")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 350.0)
                                        
                                    }
                                    Button(action: {
                                        if let url = URL(string: "https://www.100percentpure.com/blogs/feed/4-ways-red-algae-benefits-your-skin") {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Image("ra")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .padding(.top, -30.0)
                                        
                                    }
                                    Button(action: {
                                        if let url = URL(string: "https://thenaturaldiy.com/fermented-coconut-water-for-great-skin-and-hair/") {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Image("cw")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                        
                                    }
                                    
                                    NavigationLink(destination: ingred2()) {
                                        Image(systemName: "arrowshape.right")
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fit)
                                            .foregroundColor(Color(red: 0.8549019607843137, green: 0.1843137254901961, blue: 0.34509803921568627))
                                            .padding([.leading, .bottom, .trailing], 150.0)
                                         
                                    }
                                    
                                }
                                .onAppear(perform: startTimer)
                                
                                .padding(.horizontal)
                                
                                
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
    

struct ingred: View {
    var body: some View {
        ImageCarousel2(ingredImages: ["ingred1", "ingred2", "ingred3", "ingred4", "ingred5"])
//        ImageCarousel2(ingredImages: ["betterIngred1", "betterIngred2", "betterIngred3", "betterIngred4", "betterIngred5"])
    }
}


struct ingred_Previews: PreviewProvider {
    static var previews: some View {
        ingred()
    }
}
