import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let isSelected: Bool
    
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: 53, height: 53)
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: isSelected ? 4 : 0)
            )
    }
}
//#Preview {
//    ColorCircleView()
//}
