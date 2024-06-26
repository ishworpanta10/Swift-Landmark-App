//
//  ModelData.swift
//  Landmarks
//
//  Created by Ishwor on 06/03/2024.
//
import Foundation



@Observable
class ModelData{
    var landmarks : [Landmark] = load("landmarkData.json")
    
}


import Foundation


func load<T:Decodable>(_ filename:String)-> T{
    let data:Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Could not find \(filename) in main bundle.")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Could not load \(filename) from main bundle :\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Could not parse \(filename) as \(T.self):\n\(error)")
    }
}
