//
//  ItemRow.swift
//

import SwiftUI


struct ItemRow: View {
    var item:ItemModel
    
    @State var uiImage:UIImage?
    
    var body: some View {
        HStack {
            ZStack {
                if let uiImage {
                    Image(uiImage: uiImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:100, height: 100)
                }
            }
            Text(item.label)
            Spacer()
        }
        .task {
            uiImage =  await imageFor(string: item.urlStr)
        }
    }
}


struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: ItemModel(label: "I am not a fish"))
    }
}
