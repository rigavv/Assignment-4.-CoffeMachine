//
//  ListOfDrinksClass.swift
//  Assignment-4.-CoffeMachine
//
//  Created by Viktor Riga on 18.05.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import Foundation

enum Drinks: String {
    case espresso = "Espresso"
    case glace = "Glace"
    case americano = "Americano"
    
    var iceCreamDose: Double {
        switch self {
        case .americano: return 0
        case .glace: return 10
        case .espresso: return 0
        }
    }
    
    var grainsDose: Double {
        switch self {
        case .americano: return 50
        case .glace: return 20
        case .espresso: return 20
        }
    }
    var waterDose: Double {
        switch self {
        case .americano: return 100
        case .glace: return 100
        case .espresso: return 50
        }
    }
    var trashDose: Double {
        switch self {
        case .americano: return 25
        case .glace: return 25
        case .espresso: return 25
        }
    }
    var milkDose:Double {
        switch self {
        case .americano: return 50
        case .glace: return 0
        case .espresso: return 0
        }
    }
    var priсe: Double {
        switch self {
        case .americano: return 1.1
        case .glace: return 1.5
        case .espresso: return 0.5
        }
    }
    var cup: Double {
        switch self {
        case .americano: return 1
        case .glace: return 1
        case .espresso: return 1
        }
    }
    
    
}

