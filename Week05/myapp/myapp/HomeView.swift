/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack {
            Text("How can we explore the intersection of birth, life, and death? Together, they create a cyclical process fundamental to nature and human understanding. As you click through the chapters, play the given audio, and observe how the sounds overlap and capture the essence of existence.")
                .font(.title3)
                .foregroundColor(.red)
                .padding()
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
