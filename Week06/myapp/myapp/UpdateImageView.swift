//
//  UpdateImageView.swift
//  ImageEditDemo
//
//  Created by jht2 on 3/3/22.
//

import SwiftUI

struct UpdateImageView: View {
    @State var item: ItemModel
    
    @State var uiImage:UIImage?
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var document:Document
    
    var body: some View {
        VStack {
            ZStack {
            
                if let uiImage {
                    Image(uiImage: uiImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            HStack {
                Button("Update") {
                    print("UpdateImageView Update")
                    document.updateItem(item: item)
                    dismiss()
                }
                Spacer()
                Button("Delete") {
                    document.deleteItem(id: item.id)
                    dismiss();
                }
            }.padding(10)
            Form {
                TextField("Image URL", text: $item.urlStr)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                TextField("Description", text: $item.label)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
            }
        }
        .task {
            uiImage =  await imageFor(string: item.urlStr)
        }
    }
}

struct UpdateImageView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateImageView(item: ItemModel())
    }
}
