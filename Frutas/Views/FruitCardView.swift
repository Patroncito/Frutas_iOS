//
//  FruitCardView.swift
//  Frutas
//
//  Created by Alfonso Patron on 07/01/24.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK: PROPETIES
    
    
    
    //MARK: BODY
    var body: some View {
   

        ZStack {
            VStack(spacing : 20) {
                // FRUIT IMAGE
                Image("blueberry")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: .black.opacity(0.25), radius: 8, x: 6, y: 8)
                // FRUIT TITTLE
                Text("Arándano Azul")
                    .foregroundStyle(Color.white)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2,y: 2)
                // FRUIT HEADLINE
                
                Text("El Arandano es una fruta rica y deliciosa, muy popular en el mundo en dietas saludables.")
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
        .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: [Color.colorBlueberryLight, Color.colorBlueberryDark], startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20))

    }
    

}

//MARK: PREVIEW

#Preview {
    FruitCardView()
        .previewLayout(.fixed(width: 320, height: 640))
}
