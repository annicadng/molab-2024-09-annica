/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI
import AVFoundation

let death = [
    "death.mp3"
];

struct Chapter3View: View {
    @AppStorage("likes3") var likes3:Int = 0
    @State private var soundIndex = 0
    @State private var soundFile = death[0]
    @State private var player: AVAudioPlayer? = nil
    var body: some View {
        TimelineView(.animation) { context in
            VStack {
                HStack {
                    Button("⬆"){
                        likes3 += 1
                    }
                    Text("\(likes3)")
                    Button("⬇"){
                        likes3 -= 1
                    }
                }
                Text("Chapter 3: Death")
                    .foregroundColor(.red)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                ScrollView {
                    Text("Death is the quiet conclusion to life's journey, a transition that is as natural and inevitable as birth. It marks the end of one chapter and the beginning of an unknown beyond. Death carries with it both sorrow and reverence, a reminder of the fragile and fleeting nature of existence. Yet, it also holds a profound peace, an eternal stillness where time and earthly struggles fade away. In death, there is a return to the infinite, a mystery that transcends human understanding, guiding us to reflect on the meaning and depth of the lives we lead.")
                        .font(.body)
                        .padding()
                    Text("\"Even though I walk through the valley of the shadow of death, I will fear no evil, for you are with me; your rod and your staff, they comfort me.\" – Psalm 23:4 (ESV)")
                        .font(.body)
                        .padding()
                    
                    Image(.death)
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

struct Chapter3View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter3View()
    }
}
