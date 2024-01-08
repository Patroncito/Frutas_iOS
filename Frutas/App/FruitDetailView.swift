//
//  FruitDetailView.swift
//  Frutas
//
//  Created by Alfonso Patron on 08/01/24.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit : Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                        FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //TITTLE
                    
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 40)
                        // LINK
                    } //VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //VSTACK
                .navigationTitle(fruit.title)
                .toolbar(.hidden)
            }//SCROLL VIEW
            .ignoresSafeArea(edges: .top)
            

        } //NAVIGATION STACK
        
    }
}

#Preview {
    FruitDetailView(fruit: fruitData[1])
}
