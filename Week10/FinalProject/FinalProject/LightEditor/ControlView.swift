import SwiftUI

struct ControlView: View {
    let title: String
    let value: String
    let imageName: String
    
    var body: some View {
        HStack(spacing: 11) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 33, height: 33)
                .foregroundColor(.white)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.custom("K2D", size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .kerning(0.48)
                
                Text(value)
                    .font(.custom("K2D", size: 13))
                    .foregroundColor(Color(red: 0.82, green: 0.82, blue: 0.82))
            }
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 15)
        .background(Color(red: 0.10, green: 0.18, blue: 0.40))
        .cornerRadius(10)
    }
}
#Preview {
    ControlView(title: "", value: "", imageName: "")
}
