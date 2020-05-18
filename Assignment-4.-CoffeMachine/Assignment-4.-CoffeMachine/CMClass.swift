//
//  CMClass.swift
//  Assignment-4.-CoffeMachine
//
//  Created by Viktor Riga on 18.05.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import Foundation

class CM {
    var name: String
    
    var statusWaterTank: Double = 0
    var statusMilkTank: Double = 0
    var statusLiquorTank: Double = 0
    var statusGrainsTank: Double = 0
    var statusChokoTank: Double = 0
    var statusIceTank: Double = 0
    var statusIceCreamTank: Double = 0
    var statusTrashTank: Double = 0
    var statusCash: Double = 0
    
    init(name: String) {
        self.name = name
    }

    func makeEspresso() -> String {
        if statusGrainsTank - Espresso().grainsDose < 0 {
            return "Don't enought \(abs(statusGrainsTank - Espresso().grainsDose)) beans for Espresso. Call service." }
        else { statusGrainsTank -= Espresso().grainsDose }
        
        if statusWaterTank - Espresso().waterDose < 0 { return "Don't enought water for Espresso. Call service." }
        else { statusWaterTank -= Espresso().waterDose }
        
        if statusTrashTank + Espresso().trashDose >= 300 { return "Trash tank is full. Call service."}
        else { statusTrashTank += Espresso().trashDose }
        
        if statusCash <= 0.5 { return "Not enough money." }
        else { statusCash -= Espresso().priсe }
        
        return "Take your Espresso"
    }
    
    func makeGlace() -> String {
        if statusGrainsTank - Glace().grainsDose < 0 {
            return "Don't enought \(abs(statusGrainsTank - Glace().grainsDose)) beans for Glace. Call service." }
        else { statusGrainsTank -= Glace().grainsDose }
        
        if statusWaterTank - Glace().waterDose < 0 { return "Don't enought water for Glace. Call service." }
        else { statusWaterTank -= Glace().waterDose }
        
        if statusTrashTank + Glace().trashDose >= 300 { return "Trash tank is full. Call service."}
        else { statusTrashTank += Glace().trashDose }
        
        if statusCash <= 1.5 { return "Not enough money." }
        else { statusCash -= Glace().priсe }
        
        if statusIceCreamTank + Glace().iceCreamDose < 0 { return "Don't enought Ice Cream for Glace. Call service."}
        else { statusIceCreamTank -= Glace().iceCreamDose }
        
        if statusChokoTank + Glace().chokolateDose < 0 { return "Don't enought Chokolate for Glace. Call service."}
        else { statusChokoTank -= Glace().chokolateDose }
        
        return "Take your Glace"
    }
    
    
    
}
