/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI
import AVFoundation

let birth = [
    "birth.mp3"
];

func loadBundleAudio(_ fileName:String) -> AVAudioPlayer? {
    let path = Bundle.main.path(forResource: fileName, ofType:nil)!
    let url = URL(fileURLWithPath: path)
    do {
        return try AVAudioPlayer(contentsOf: url)
    } catch {
        print("loadBundleAudio error", error)
    }
    return nil
}

struct Chapter1View: View {
    @AppStorage("likes") var likes:Int = 0
    @State private var soundIndex = 0
    @State private var soundFile = birth[0]
    @State private var player: AVAudioPlayer? = nil
    var body: some View {
        TimelineView(.animation) { context in
        VStack {
            HStack {
                Button("⬆"){
                    likes += 1
                }
                Text("\(likes)")
                Button("⬇"){
                    likes -= 1
                }
            }
            Text("Chapter 1: Birth")
                .foregroundColor(.red)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            ScrollView {
                Text("Birth is the beginning of all life, a moment where potential meets reality. It is the miraculous process of creation, where a new being enters the world, filled with endless possibilities. Whether in nature, in families, or in ideas, birth symbolizes renewal and the unfolding of life's mysteries. It carries with it hope, promise, and the warmth of new beginnings, reminding us of the profound beauty and interconnectedness of existence. Through birth, life continues its eternal cycle, ever-evolving and full of wonder.")
                    .font(.body)
                    .padding()
                Text("\"Before I formed you in the womb I knew you, and before you were born I consecrated you.\" – Jeremiah 1:5 (ESV)")
                    .font(.body)
                    .padding()
                
                Image(.birth)
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


struct Chapter1View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter1View()
    }
}
