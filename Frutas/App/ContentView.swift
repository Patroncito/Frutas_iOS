//
//  ContentView.swift
//  Frutas
//
//  Created by Alfonso Patron on 07/01/24.
//

import SwiftUI

struct ContentView: View {
    var fruits : [Fruit] = fruitData
    
    var body: some View {
        NavigationStack{
            
            List(fruits.shuffled()) { item in
              FruitRowCell(fruit: item)
                    .padding(.vertical, 4)
                
            }.listRowSpacing(10)
                .navigationTitle("Fruits")
                .navigationBarTitleDisplayMode(.automatic)
            
           
            
        }//NAVIGATION
        
    }
}

#Preview {
    ContentView()
}
