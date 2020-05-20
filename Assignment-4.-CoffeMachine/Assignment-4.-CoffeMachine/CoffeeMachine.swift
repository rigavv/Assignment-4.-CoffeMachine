//
//  CMClass.swift
//  Assignment-4.-CoffeMachine
//
//  Created by Viktor Riga on 18.05.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import Foundation


class CoffeeMachine {
    var name: String
    
    var statusWaterTank: Double = 0
    var statusMilkTank: Double = 0
    var statusGrainsTank: Double = 0
    var statusCups: Double = 0
    var statusIceCreamTank: Double = 0
    var statusTrashTank: Double = 0
    var statusCash: Double = 0
    var statusCashBox: Double = 0
    var statusCupCount: Double = 0
    
    init(name: String) {
        self.name = name
    }
    
    func makeADrink(drink: Drinks) -> String {
        if statusGrainsTank - drink.grainsDose <= 0 { return "Not enough grains." }
        else if statusWaterTank - drink.waterDose <= 0 { return "Not enought water." }
        else if statusTrashTank + drink.trashDose >= 300 { return "Trash tank is full."}
        else if statusMilkTank - drink.milkDose <= 0 { return "Not enought Milk."}
        else if statusIceCreamTank - drink.iceCreamDose <= 0 { return "Not enought Ice Cream."}
        else if statusCups - drink.cup <= 0 { return "Not enought cups."}
        else if statusCash < drink.priсe { return "Not enough money." }
        else
        {
            statusGrainsTank -= drink.grainsDose
            statusWaterTank -= drink.waterDose
            statusTrashTank += drink.trashDose
            statusIceCreamTank -= drink.iceCreamDose
            statusMilkTank -= drink.milkDose
            statusCups -= drink.cup
            statusCash -= drink.priсe
            statusCashBox += drink.priсe
            statusCupCount += drink.cup
        }
        return "\(drink.rawValue) is ready!"
    }
}

