//
//  FruitRowCell.swift
//  Frutas
//
//  Created by Alfonso Patron on 07/01/24.
//

import SwiftUI

struct FruitRowCell: View {
    
    var fruit : Fruit

    var body: some View {
        
        HStack {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.2),radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 5){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
       
    }
}

#Preview {
    FruitRowCell(fruit : fruitData[0])
}
