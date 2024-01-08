//
//  FruitHeaderView.swift
//  Frutas
//
//  Created by Alfonso Patron on 08/01/24.
//

import SwiftUI

struct FruitHeaderView: View {
    
    //MARK: PROPETIES
    var fruit : Fruit
    @State private var isAnimated : Bool = false
    
    //MARK: BODY
    var body: some View {
        
        ZStack{
            
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.20),radius: 8, x: 2, y: 2)
                .padding(.vertical, 20)
                .scaleEffect(isAnimated ? 1.0 : 0.6)
        } //ZSTACK
        .frame(height: 440)
        .onAppear{
            withAnimation(.easeOut(duration: 0.8)) {
                isAnimated = true
            }
        }
    }
}

//MARK: PREVIEW
#Preview {

    FruitHeaderView(fruit: fruitData[1])
            .previewLayout(PreviewLayout.sizeThatFits)

        
}
