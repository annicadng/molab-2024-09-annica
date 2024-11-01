//
//  AddImageView.swift
//  Circle
//
//  Created by Annica Dong on 10/17/24.
//

import SwiftUI

struct AddImageView: View {
    @State var item: ItemModel
    @State var uiImage:UIImage?
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var document:Document
    
    var body: some View {
        VStack{
            ZStack{
                if let uiImage {
                    Image(uiImage: uiImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            HStack{
                Button("Add"){
                    print("AddImageView Add")
                    document.addItem(item:item)
                    dismiss()
                }
                Spacer()
                Button("Cancel") {
                    print("AddImageView Cancel")
                    dismiss()
                }
            }.padding(10)
            Form{
                TextField("Image URL", text: $item.urlStr)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                TextField("Label", text: $item.label)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
            }
        }
        .task{
            uiImage = await imageFor(string: item.urlStr)
        }
    }
    }
struct AddImageView_Previews: PreviewProvider{
    static var previews: some View{
        AddImageView(item: ItemModel())
    }
}
