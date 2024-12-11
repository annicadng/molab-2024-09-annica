//
//  FinalProjectApp.swift
//  FinalProject
//
//  Created by Annica Dong on 11/8/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            LightEditorView()
                .tabItem {
                    Label("Light Editor", systemImage: "lightbulb")
                }
            
            ConnectPacksView()
                .tabItem {
                    Label("Connections", systemImage: "house")
                }
            
            ZStack{
                Color(red: 14/255, green: 17/255, blue: 38/255)
                    .edgesIgnoringSafeArea(.all)
                
                Text("To access the message portal, you must connect with someone via the Connections tab.")
            }
                    .tabItem {
                        Label("Message Portal", systemImage: "lock")
                        
                    }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
