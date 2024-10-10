/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI
import AVFoundation

let life = [
    "life.mp3"
];

struct Chapter2View: View {
    @AppStorage("likes2") var likes2:Int = 0
    @State private var soundIndex = 0
    @State private var soundFile = life[0]
    @State private var player: AVAudioPlayer? = nil
    var body: some View {
        TimelineView(.animation) { context in
        VStack {
            HStack {
                Button("⬆"){
                    likes2 += 1
                }
                Text("\(likes2)")
                Button("⬇"){
                    likes2 -= 1
                }
            }
            Text("Chapter 2: Life")
                .foregroundColor(.red)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            ScrollView {
                Text("Life is the dance of existence, a journey filled with moments of joy, challenge, growth, and discovery. It is the essence of being, where each breath fuels our ability to connect, create, and experience the world around us. Life is vibrant, unpredictable, and deeply meaningful, offering an endless canvas for dreams, relationships, and transformation. It pulses through all things, interweaving the paths of individuals and nature in a delicate, yet powerful, harmony. To live is to embrace the gift of presence, to savor the richness of moments both big and small.")
                    .font(.body)
                    .padding()
                Text("\"I came that they may have life and have it abundantly.\" – John 10:10 (ESV)")
                    .font(.body)
                    .padding()
                
                Image(.life)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding()
                
                HStack {
                    Button("Play", systemImage: "play") {
                        player = loadBundleAudio(soundFile)
                        print("player", player as Any)
                        player?.numberOfLoops = -1
                        player?.play()
                    }
                }
            }
            }
        }
        .padding([.top, .bottom], 50)
    }
}

struct Chapter2View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter2View()
    }
}
