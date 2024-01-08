//
//  ContentView.swift
//  Frutas
//
//  Created by Alfonso Patron on 07/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSettings : Bool = false
    var fruits : [Fruit] = fruitData
    
    var body: some View {
        NavigationView{
            
            List(fruits.shuffled()) { item in
             
                NavigationLink(destination: FruitDetailView(fruit: item)) {
                    FruitRowCell(fruit: item)
                          .padding(.vertical, 4)
                }
                
            }.listRowSpacing(10)
                .navigationTitle("Fruits")
                .toolbar {
                    Button{
                        isShowingSettings = true
                            
                    } label: {
                        Image(systemName: "slider.horizontal.3")

                    }.sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
                    
                }
                .navigationBarTitleDisplayMode(.automatic)
            
           
            
        }//NAVIGATION
        
    }
}

#Preview {
    ContentView()
}
