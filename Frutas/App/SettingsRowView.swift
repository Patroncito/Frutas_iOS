//
//  SettingsRowView.swift
//  Frutas
//
//  Created by Alfonso Patron on 08/01/24.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name : String
    var content : String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    
    var body: some View {
    
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name)
                    .foregroundStyle(.gray)
                Spacer()
                if (content != nil ) {
                    Text(content!)
                        .bold()
                } else if (linkLabel != nil && linkDestination != nil){
                   
                    Link(linkLabel!, destination: URL(string: linkDestination!)!)
                        .bold()
                    Image(systemName: "arrow.up.right.square").foregroundStyle(.pink)
                } else {
                    EmptyView()
                }
            }
        }

    }
}

#Preview {
    GroupBox{
        SettingsRowView(name: "Version",content: "1.0.1")
        
            SettingsRowView(name: "Version",content: "1.0.1")
            
        SettingsRowView(name: "Developer", linkLabel: "WebSite", linkDestination: "https://github.com/")

    }.padding(.horizontal, 15)
}
