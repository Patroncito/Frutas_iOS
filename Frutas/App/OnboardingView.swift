//
//  OnboardingView.swift
//  Frutas
//
//  Created by Alfonso Patron on 07/01/24.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    var fruits : [Fruit] = fruitData
    
    //MARK: - BODY
    var body: some View {
            TabView{
                ForEach(fruits) { item in
                    FruitCardView(fruit: item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .padding(.vertical, 20)
        
    }
}


//MARK: PREVIEW
#Preview {
    OnboardingView()
}
