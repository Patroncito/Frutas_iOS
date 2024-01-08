//
//  SettingsLabelView.swift
//  Frutas
//
//  Created by Alfonso Patron on 08/01/24.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText : String
    var labelImage : String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
            Spacer()
            Image(systemName: labelImage)
    }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
}
