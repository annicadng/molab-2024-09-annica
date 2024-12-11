//
//  Profile.swift
//  FinalProject
//
//  Created by Annica Dong on 11/22/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        ZStack {
            Color(red: 14/255, green: 17/255, blue: 38/255)
                .ignoresSafeArea()
            
            // Your other content here
            // Other layers will respect the safe area edges
            ScrollView {
                AsyncImage(url: URL(string: "https://cdn.builder.io/api/v1/image/assets/TEMP/2a31f4bd052ac644d5aa0a28a132f0cead55c4fb111e7377d40716c772a468e5?placeholderIfAbsent=true&apiKey=2d212bc80d4043108966c4abc3898241&format=webp")) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(1.26, contentMode: .fit)
                            .frame(maxWidth: 329)
                    case .failure:
                        Color.gray
                            .aspectRatio(1.26, contentMode: .fit)
                            .frame(maxWidth: 329)
                    @unknown default:
                        EmptyView()
                    }
                }
            }
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
