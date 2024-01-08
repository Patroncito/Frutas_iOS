//
//  SettingsView.swift
//  Frutas
//
//  Created by Alfonso Patron on 08/01/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment (\.dismiss) var isPresented
    var body: some View {
        
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false){
                //MARK: SECTION 1
                VStack(spacing: 20) {
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Fruits", labelImage: "info.circle"),
                        content: {
                            Divider().padding(.vertical, 4)
                            HStack(alignment: .center, spacing: 10) {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                
                                Text("fruits is an enciplopedia to see nutritional information, from vitamins, minerals, fats and even sugars, thank you for using this application, remember to eat healthy every day, have a good day")
                                    .font(.footnote)
                            }
                    })
                    
                }
                
            }.navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    Button{
                        print("Boton presionado")
                        isPresented()
                    } label: {
                        Image(systemName: "xmark")

                    }
                }
                
        }
    }
}

#Preview {
    SettingsView()
}
