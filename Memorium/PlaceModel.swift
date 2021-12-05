//
//  PlaceModel.swift
//  Memorium
//
//  Created by Victoria Klimova on 05.12.2021.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var comments: String
    var image: String
    
    static let placeNames = [
         "Moscow Ostankino", "Moscow Kremlin", "Pereslavl Zalesskiy",
         "Kostroma", "Kolomna", "Gorokhovets",
         "Sergiev Posad", "Ples", "Vladimir",
         "Rostov"
     ]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for place in placeNames {
            places.append(Place(name: place, location: "Moscow", comments: "cool place", image: place))
        }
        
        return places
    }
    
}
