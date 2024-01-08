//
//  FruitNutrientsView.swift
//  Frutas
//
//  Created by Alfonso Patron on 08/01/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit : Fruit
    let nutrients : [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins","Minerals"]
    var body: some View {
        
        GroupBox (){
            DisclosureGroup("Nutritional value per 100 g"){
                ForEach(nutrients.indices, id: \.self) { item in
                    Divider().padding(.vertical, 4)
                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                            .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                            

                    }
                    
                }

        
            }
        } // GROUPBOX
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitData[1])
}
