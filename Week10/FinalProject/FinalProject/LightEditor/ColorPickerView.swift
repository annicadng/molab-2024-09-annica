import SwiftUI

struct ColorPickerView: View {
    @Binding var selectedColor: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Text("Color")
                    .font(.custom("K2D", size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .kerning(0.48)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 20)
            
            AsyncImage(url: URL(string: "https://cdn.builder.io/api/v1/image/assets/TEMP/4295fcf3-9150-4bd3-a0ac-12941fecd714?placeholderIfAbsent=true&apiKey=2d212bc80d4043108966c4abc3898241&format=webp")) { image in
                image.resizable().aspectRatio(contentMode: .fit)
            } placeholder: {
                Color.gray
            }
            .frame(height: 250)
            .cornerRadius(15)
        }
        .padding(.top, 20)
    }
}
//#Preview {
//    ColorPickerView()
//}
