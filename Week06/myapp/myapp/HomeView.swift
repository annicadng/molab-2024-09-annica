/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var document:Document
    
    var body: some View {
        NavigationView {
            List {
                // Display in reverse order to see new additions first
                ForEach(document.model.items.reversed()) { item in
                    NavigationLink( destination:
                        UpdateImageView(item: item)
                    )
                    {
                        ItemRow(item: item)
                    }
                }
            }
            .navigationTitle("My Posts")
            .navigationBarItems(
                trailing:
                    NavigationLink( destination:
                        AddImageView(item: ItemModel())
                    )
                {
                    Image(systemName: "plus")
                }
            )
        }
    }
//        VStack {
//            Text("Forum")
//                .foregroundColor(.red)
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .padding()
//            Text("How can we explore the intersection of birth, life, and death? Together, they create a cyclical process fundamental to nature and human understanding. As you click through the chapters, play the given audio, and observe how the sounds overlap and capture the essence of existence.")
//                .font(.title3)
//                .padding()
//            Text("Scroll to see the online forum. Share your thoughts with the rest of the community.")
//                .padding()
//        }
        
//    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
