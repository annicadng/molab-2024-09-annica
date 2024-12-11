import SwiftUI

struct EditProfileView: View {
    @State private var name: String = "Annica"
    @State private var username: String = "@annicadng"
    @State private var birthday: String = "01/23/2004"
    @State private var city: String = ""
    @State private var occupation: String = ""
    @State private var artist: String = ""
    @State private var bio: String = ""
    
    var body: some View {
            ZStack{
                Color(red: 14/255, green: 17/255, blue: 38/255)
                    .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 0) {
                
                HStack(spacing: 20) {
                    AsyncImage(url: URL(string: "https://cdn.builder.io/api/v1/image/assets/TEMP/063ecb437b0e3e013ff600f2c6a7729846940136549a4fef42e73d5a2b515b1b?placeholderIfAbsent=true&apiKey=2d212bc80d4043108966c4abc3898241&format=webp")) { image in
                        image.resizable()
                            .frame(width: 23, height: 23)
                    } placeholder: {
                        Color.gray.opacity(0.3)
                    }
                    
                    Text("Edit information")
                        .font(.custom("Jaldi", size: 20))
                        .foregroundColor(Color(red: 246/255, green: 246/255, blue: 246/255))
                }
                .padding(.top, 26)
                .padding(.horizontal, 16)
                
                Divider()
                    .background(Color(red: 26/255, green: 48/255, blue: 104/255, opacity: 0.96))
                    .padding(.top, 8)
                
                VStack(alignment: .center, spacing: 0) {
                    AsyncImage(url: URL(string: "https://cdn.builder.io/api/v1/image/assets/TEMP/beadf8625f8fa7e5fc4985caa30e10cb1ab6f3e36a16316f8eb0cb604014e019?placeholderIfAbsent=true&apiKey=2d212bc80d4043108966c4abc3898241&format=webp")) { image in
                        image.resizable()
                            .frame(width: 135, height: 135)
                            .shadow(color: .white.opacity(0.3), radius: 10)
                    } placeholder: {
                        Color.gray.opacity(0.3)
                    }
                    .padding(.top, 23)
                    
                    Text("Add profile picture")
                        .font(.custom("K2D", size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0/255, green: 148/255, blue: 255/255))
                        .padding(.top, 19)
                }
                .frame(maxWidth: .infinity)
                
                Divider()
                    .background(Color(red: 26/255, green: 48/255, blue: 104/255, opacity: 0.96))
                    .padding(.top, 23)
                
                Form {
                    ProfileFieldView(label: "Name", value: $name, placeholder: "Enter name")
                    ProfileFieldView(label: "Username", value: $username, placeholder: "Enter username")
                    ProfileFieldView(label: "Birthday", value: $birthday, placeholder: "Enter birthday")
                    ProfileFieldView(label: "City", value: $city, placeholder: "Add where you're from")
                    ProfileFieldView(label: "Occupation", value: $occupation, placeholder: "Add what you do")
                    ProfileFieldView(label: "Artist", value: $artist, placeholder: "Add favorite artist")
                    ProfileFieldView(label: "Bio", value: $bio, placeholder: "Add something about you")
                }
                .scrollContentBackground(.hidden)
                .padding(.horizontal, 20)
            }
        }
    }
}


struct ProfileFieldView: View {
    let label: String
    @Binding var value: String
    let placeholder: String
    
    var body: some View {
        HStack {
            Text(label)
                .font(.custom("Microsoft Sans Serif", size: 16))
                .foregroundColor(Color(red: 246/255, green: 246/255, blue: 246/255))
            
            TextField(placeholder, text: $value)
                .font(.custom("Microsoft Sans Serif", size: 16))
                .foregroundColor(value.isEmpty ? Color(red: 130/255, green: 130/255, blue: 130/255) : Color(red: 246/255, green: 246/255, blue: 246/255))
                .accessibilityLabel(label)
            
            if !value.isEmpty {
                AsyncImage(url: URL(string: "https://cdn.builder.io/api/v1/image/assets/TEMP/9fb403cee7d7ab7f37ee0dad409077337e6e9b103f4101d32aa74af485a05649?placeholderIfAbsent=true&apiKey=2d212bc80d4043108966c4abc3898241&format=webp")) { image in
                    image.resizable()
                        .frame(width: 23, height: 23)
                } placeholder: {
                    Color.gray.opacity(0.3)
                }
            }
        }
        .padding(.vertical, 10)
    }
}

#Preview{
    EditProfileView()
}
