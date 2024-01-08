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
                Text("Hello, Settings!")
                    .bold()
                
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
