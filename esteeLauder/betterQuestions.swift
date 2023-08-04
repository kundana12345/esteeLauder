//
//  betterQuestions.swift
//  esteeLauder
//
//  Created by Kundana Addala on 8/3/23.
//

import SwiftUI

struct betterQuestions: View {
    @State private var userInput: String = ""
    @State private var response: String = ""
    @State private var link: String = "https://www.esteelauder.com/product/684/112204/product-catalog/skincare/cleanser-makeup-remover/nutritious/2-in-1-foam-cleanser?size=4.2_oz."
    var body: some View {
        ZStack{
            NavigationStack{
                Color(red: 230/255, green: 233/255, blue: 240/255)
                    .ignoresSafeArea()
                    .overlay(
                LazyVStack(spacing: 20) {
                    NavigationLink(destination: homePage()) {
                        Image(systemName: "house.fill")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color(red: 0.855, green: 0.1843137254901961, blue: 0.34509803921568627))
                            .padding(.top, -60.0)
                            .frame(width: 50.0)
                            
                            
                    }
                        
                    Image("questionsHeader")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, -30.0)
                        
                    Image("general1")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 75.0)
                    Text("Enter your question, then click submit for the answer. Click on the more info link for more information.")
                        .font(.body)
                        .fontWeight(.thin)
                    TextField("Enter your question here...", text: $userInput)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .border(Color(red: 0.855, green: 0.1843137254901961, blue: 0.34509803921568627), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    Button("Submit Quesiton") {
                        if userInput.lowercased().contains("cleanser") {
                            response = "The 2-in-1 foam cleanser both cleanses and deeply purifies. It works as a daily cleanser or weekly purifying mask."
                            link = "https://www.esteelauder.com/product/684/112204/product-catalog/skincare/cleanser-makeup-remover/nutritious/2-in-1-foam-cleanser?size=4.2_oz."
                        } else if userInput.lowercased().contains("radiant lotion") {
                            response = "Prep. Infuse. Glow. Radiant Essence Lotion delivers a cushioning, hydrating infusion."
                            link = "https://www.esteelauder.com/product/26389/112200/product-catalog/skincare/toner-treatment-lotion/nutritious/radiant-essence-treatment-lotion?size=6.7_oz."
                        } else if
                            userInput.lowercased().contains("melting mask"){
                            response = "Pores. Hydration. Glow. Melting Soft Creme/Mask melts into skin. Comfortable, cushy, pillowy feel."
                            link = "https://www.esteelauder.com/product/688/110710/product-catalog/skincare/moisturizer/nutritious/melting-soft-crememask-moisturizer?size=0.5_oz."
                        } else if
                            userInput.lowercased().contains("ingredients"){
                            response = "Our nutritious collection's ingredients are 92%+ naturally derived. Our ingredients include: sweet kelp, fermented red algae, and fermented coconut water."
                            link = "https://www.esteelauder.com/nutritious-skincare-innovative-science-ingredients"
                        } else {
                            response = "Sorry, we're not sure we can answer that. Try making your question more general. Or, visit the below website for more info: "
                            link = "https://www.esteelauder.com/products/26393/product-catalog/skin-care/skin-care-collections/nutritious"
                        }
                            
                    }
                    .padding()
                                .background(Color(red: 0.8549019607843137, green: 0.1843137254901961, blue: 0.34509803921568627))
                                .foregroundStyle(.white)
                                .clipShape(Capsule())
                    Text(response)
                        .padding(.horizontal)
                    Link("More info ", destination: URL(string: link)!)
                        
                        
                    
                })
            }
        }
    }
}

struct betterQuestions_Previews: PreviewProvider {
    static var previews: some View {
        betterQuestions()
    }
}
