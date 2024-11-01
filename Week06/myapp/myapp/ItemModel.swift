//
//  ItemModel.swift
//  Circle
//
//  Created by Annica Dong on 10/17/24.
//

import Foundation

struct ItemModel : Identifiable, Codable {
    var id = UUID()
    var urlStr:String = ""
    var label:String = ""
}

