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
    var statusGrainsTank: Double = 0
    var statusCups: Double = 0
    var statusIceCreamTank: Double = 0
    var statusTrashTank: Double = 0
    var statusCash: Double = 0
    
    init(name: String) {
        self.name = name
    }

    func makeEspresso() -> String {

        if statusGrainsTank - Espresso().grainsDose <= 0 { return "Not enough grains." }
        else if statusWaterTank - Espresso().waterDose <= 0 { return "Not enought water." }
        else if statusTrashTank + Espresso().trashDose >= 300 { return "Trash tank is full."}
        else if statusCups - Espresso().cup <= 0 { return "Not enought cups."}
        else if statusCash < 0.5 { return "Not enough money." }
        else
        { statusGrainsTank -= Espresso().grainsDose
          statusWaterTank -= Espresso().waterDose
          statusTrashTank += Espresso().trashDose
          statusCups -= Glace().cup
          statusCash -= Espresso().priсe
        }
        return "Take your Espresso"
    }

    
    func makeGlace() -> String {
        
        if statusGrainsTank - Glace().grainsDose <= 0 { return "Not enough grains." }
            else if statusWaterTank - Glace().waterDose <= 0 { return "Not enought water." }
            else if statusTrashTank + Glace().trashDose >= 300 { return "Trash tank is full."}
            else if statusCups - Glace().cup <= 0 { return "Not enought cups."}
            else if statusIceCreamTank - Glace().iceCreamDose <= 0 { return "Not enought Ice Cream."}
            else if statusCash < 1.5 { return "Not enough money." }
            else
            { statusGrainsTank -= Glace().grainsDose
              statusWaterTank -= Glace().waterDose
              statusTrashTank += Glace().trashDose
              statusIceCreamTank -= Glace().iceCreamDose
              statusCups -= Glace().cup
              statusCash -= Glace().priсe
            }
            return "Take your Glace"
    }
    
    func makeAmericano() -> String {
        
        if statusGrainsTank - Americano().grainsDose <= 0 { return "Not enough grains." }
        else if statusWaterTank - Americano().waterDose <= 0 { return "Not enought water." }
        else if statusTrashTank + Americano().trashDose >= 300 { return "Trash tank is full."}
        else if statusCups - Americano().cup <= 0 { return "Not enought cups."}
        else if statusMilkTank - Americano().milkDose <= 0 { return "Not enought Milk."}
        else if statusCash < 1.1 { return "Not enough money." }
        else
        { statusGrainsTank -= Americano().grainsDose
          statusWaterTank -= Americano().waterDose
          statusTrashTank += Americano().trashDose
          statusMilkTank -= Americano().milkDose
          statusCups -= Americano().cup
          statusCash -= Americano().priсe
        }
        return "Take your Americano"
    }
       
    
    
}
