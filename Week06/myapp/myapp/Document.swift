//
//  Model.swift
//

import Foundation

class Document: ObservableObject {
    @Published var model: Model
    // @Published var items:[ItemModel]
    
    // file name to store JSON for model items
    let saveFileName = "model.json"
    
    // true to initialize model items with sample items
    let initSampleItems = true
    
    init() {
        print("Model init")
        
        // For testing:
//         remove(fileName: saveFileName)
        
        model = Model(JSONfileName: saveFileName);
        if initSampleItems && model.items.isEmpty {
            // items for testing
            model.items = []
            addItem(urlStr: imageArray[0], label:"");
            addItem(urlStr: imageArray[0], label:"");
            addItem(urlStr: imageArray[0], label:"");
            saveModel();
        }
    }
    
    func addItem(urlStr:String, label:String) {
        let item = ItemModel(id: UUID(), urlStr: urlStr, label: label);
        model.addItem(item: item);
    }
    
    func addItem(item: ItemModel) {
        model.addItem(item: item);
        saveModel();
    }

    func updateItem(item: ItemModel) {
        model.updateItem(item: item);
        saveModel();
    }
    
    func deleteItem(id: UUID) {
        model.deleteItem(id: id)
        saveModel();
    }
    
    func saveModel() {
        print("Document saveModel")
        model.saveAsJSON(fileName: saveFileName)
    }
}

let imageArray = [
    "https://tisch.nyu.edu/content/dam/tisch/itp/Faculty/dan-osullivan1.jpg.preset.square.jpeg"
   
]
