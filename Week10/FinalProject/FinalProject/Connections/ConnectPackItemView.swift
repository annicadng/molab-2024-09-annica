import SwiftUI

struct GlowingImageView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://cdn.builder.io/api/v1/image/assets/TEMP/2d7c5e2880405ebf60731a9fb8005699afeeb70ecd026035157ff13c8181d06d?placeholderIfAbsent=true&apiKey=2d212bc80d4043108966c4abc3898241&format=webp")) { phase in
            switch phase {
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 71)
                    .shadow(color: Color(red: 0, green: 41/255, blue: 1, opacity: 0.4), radius: 10)
            case .failure(_):
                Color.gray
                    .frame(width: 71, height: 71)
            case .empty:
                ProgressView()
            @unknown default:
                EmptyView()
            }
        }
        .accessibilityLabel("Glowing image")
    }
}

struct onnectPackItemView: View {
    let name: String
    let age: Int
    let imageUrl: String
    let emojis: [String]
    
    var body: some View {
        HStack(spacing: 0) {
            GlowingImageView()
            AsyncImage(url: URL(string: "\(imageUrl)&format=webp")) { image in
                image.resizable()
                    .frame(width: 71, height: 71)
                    .clipShape(Circle())
                    .shadow(color: .white.opacity(0.3), radius: 10)
            } placeholder: {
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("\(name)'s ConnectPack")
                    .font(.system(size: 16))
                    .foregroundColor(Color(red: 135/255, green: 135/255, blue: 135/255))
                
                HStack {
                    Text("\(name), \(age) •")
                        .font(.custom("K2D", size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 237/255, green: 236/255, blue: 237/255))
                    
                    ForEach(emojis, id: \.self) { emoji in
                        Text(emoji)
                            .font(.system(size: 20))
                    }
                }
            }
            .padding(.leading, 20)
            
            Spacer()
        }
        .padding(.vertical, 24)
        .padding(.horizontal, 21)
        .background(Color(red: 14/255, green: 17/255, blue: 38/255))
    }
}


