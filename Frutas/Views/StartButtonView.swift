//
//  StartButtonView.swift
//  Frutas
//
//  Created by Alfonso Patron on 07/01/24.
//

import SwiftUI

struct StartButtonView: View {
    
    var body: some View {
        
        Button{
            
        } label: {
            Text("Start")
            Image(systemName: "arrow.right.circle")
                .imageScale(.large)
        }
        .tint(.white)
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Capsule().stroke(Color.white, lineWidth: 1.25))
        
    }
}

#Preview {
    StartButtonView()
        .background(Color.red)
        .previewLayout(.sizeThatFits)
}
