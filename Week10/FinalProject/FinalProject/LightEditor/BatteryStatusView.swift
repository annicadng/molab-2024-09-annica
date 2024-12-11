import SwiftUI

struct BatteryStatusView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 7) {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Battery")
                            .font(.custom("K2D", size: 16))
                            .fontWeight(.bold)
                            .kerning(0.48)
                            .foregroundColor(Color(red: 0.965, green: 0.965, blue: 0.965))
                        
                        Text("80%, 4 hrs")
                            .font(.custom("K2D", size: 13))
                            .foregroundColor(Color(red: 0.816, green: 0.816, blue: 0.816))
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 13)
                    .background(Color(red: 0.102, green: 0.188, blue: 0.408).opacity(0.96))
                    .cornerRadius(6)
                }
                .padding(6)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 0.275, green: 0.49, blue: 0.647), lineWidth: 5)
                )
                
                AsyncImage(url: URL(string: "https://cdn.builder.io/api/v1/image/assets/TEMP/c313851dbf50f40f1cc983bbf00417271ce137e6f92dd6bd6fac5feaaa25fb60?placeholderIfAbsent=true&apiKey=2d212bc80d4043108966c4abc3898241&format=webp")) { image in
                    image
                        .resizable()
                        .aspectRatio(0.21, contentMode: .fit)
                } placeholder: {
                    Color.gray
                }
                .frame(width: 5, height: 24)
                .clipShape(Circle())
            }
            .frame(maxWidth: 162)
        }
    }
}

#Preview {
    BatteryStatusView()
}
