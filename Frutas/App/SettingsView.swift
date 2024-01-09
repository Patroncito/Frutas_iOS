//
//  SettingsView.swift
//  Frutas
//
//  Created by Alfonso Patron on 08/01/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment (\.dismiss) var isPresented
    @AppStorage("isOnboardingView2") var isOnboarding: Bool = false
    
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
                
                //MARK: SECTION 2
                
                GroupBox(label: SettingsLabelView(labelText: "customization", labelImage: "paintbrush"), content: {
                    
                    Divider().padding(.vertical, 4)
                    Text("If you want restar the application by toggle the switch in thix box.")
                        .font(.footnote)
                        .padding(.vertical, 10)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .multilineTextAlignment(.leading)
                    
                    Toggle(isOn: $isOnboarding) {
                        if isOnboarding {
                            Text("Restarted".uppercased())
                                .bold()
                                .foregroundStyle(.green)
                        } else {
                            Text("Restart".uppercased())
                                .bold()
                                .foregroundStyle(.secondary)

                        }
                            
                    }
                    .padding()
                    .background(
                        Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    )
                    
                })
                
                //MARK: SECTION 3
                GroupBox(label: SettingsLabelView(labelText: "Aplication".uppercased(), labelImage: "apps.iphone"), content: {
                    
                    
                    SettingsRowView(name: "Developer", content: "Alfoso Patrón")
                    SettingsRowView(name: "Designer", content: "Alfoso Patrón")
                    SettingsRowView(name: "Compability", content: "iOS 15+")
                    SettingsRowView(name: "Website", linkLabel: "GitHub", linkDestination: "https://github.com/Patroncito")
                    SettingsRowView(name: "Instagram", linkLabel: "@AlfonsoPatroon", linkDestination: "https://www.instagram.com/alfonsopatroon/")
                    SettingsRowView(name: "SwiftUI", content: "2.0")
                    SettingsRowView(name: "Version", content: "1.0")
                    
                    
                })

                
                
            }//MARK: SCROLL
            .padding(.horizontal, 10)
            .navigationTitle("Settings")
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
        .padding(.horizontal, 20)
}
