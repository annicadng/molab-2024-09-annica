import SwiftUI

struct ConnectPacksView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // Status Bar
                HStack {
                 
            
                
                    Spacer()
                    
                    HStack(spacing: 9) {
        
                    }
                }
                .padding(.horizontal)
                
                // Connect Pack Items
                VStack(spacing: -4) {
                    ForEach(0..<7) { index in
                        onnectPackItemView(
                            name: packNames[index],
                            age: packAges[index],
                            imageUrl: "http://b.io/ext_\(index + 3)-&format=webp",
                            emojis: packEmojis[index]
                        )
                    }
                }
                .padding(.top, 20)
            }
            .background(Color(red: 14/255, green: 17/255, blue: 38/255))
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    private let packNames = ["Profile", "Bailey", "Paul", "Omid", "Mike", "User", "Evan"]
    private let packAges = [20, 21, 87, 23, 27, 22, 30]
    private let packEmojis = [
        ["[]", "[]","[]"],
        ["🧚🏼‍♀️", "🍻","🕺🏻"],
        ["❤️", "🚬", "👩‍❤️‍💋‍👨"],
        ["🦋", "🚫", "🕺🏻"],
        ["👽", "🍃","🕺🏻"],
        ["🍬", "🍄", "🕺🏻"],
        ["👽", "🚬", "🗣️"]
    ]
}
#Preview {
        ConnectPacksView()
}
