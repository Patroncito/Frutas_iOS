//
//  FruitCardView.swift
//  Frutas
//
//  Created by Alfonso Patron on 07/01/24.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK: PROPETIES
    @State private var isAnimating : Bool = false
    
     var fruit : Fruit
    
    //MARK: BODY
    var body: some View {
   

        ZStack {
            VStack(spacing : 20) {
                // FRUIT IMAGE
                Image(fruit.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: .black.opacity(0.25), radius: 8, x: 6, y: 8)
                    .scaleEffect( isAnimating ? 1.0 : 0.6)
                // FRUIT TITTLE
                Text(fruit.title)
                    .foregroundStyle(Color.white)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2,y: 2)
                // FRUIT HEADLINE
                
                Text(fruit.headline)
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //  BUTTON START
                
                Button {
                    
                } label: {
                    StartButtonView()
                }
                
            }//: VSTACK
        }//: ZSTACK
        .onAppear{
            withAnimation(.easeInOut(duration: 0.8)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: [fruit.gradientColors[0],fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding()


    }
    

}

//MARK: PREVIEW

#Preview {
    FruitCardView(fruit: fruitData[1])
        .previewLayout(.fixed(width: 320, height: 640))
}
