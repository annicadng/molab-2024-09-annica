import SwiftUI

struct BottomControlsView: View {
    var body: some View {
        HStack(spacing: 20) {
            Button(action: {
                // Handle left button action
            }) {
                Image(systemName: "lightbulb")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
//                LightEditorView()
            }
            
            Button(action: {
                // Handle center button action
            }) {
                Image(systemName: "house")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
//                UserProfileView()
            }
            
            Button(action: {
                // Handle right button action
            }) {
                Image(systemName: "lock")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
            }
        }
        .padding(.vertical, 18)
//        .frame(maxWidth: .infinity)
        .background(Color(red: 0.05, green: 0.07, blue: 0.15))
    }
}

#Preview {
    BottomControlsView()
}
