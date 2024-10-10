/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            Chapter1View()
                .tabItem {
                    Label("Chapter 1", systemImage: "book")
                }
            
            Chapter2View()
                .tabItem {
                    Label("Chapter 2", systemImage: "book")
                }
            
            Chapter3View()
                .tabItem {
                    Label("Chapter 3", systemImage: "book")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
