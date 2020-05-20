//
//  ViewController.swift
//  Assignment-4.-CoffeMachine
//
//  Created by Viktor Riga on 18.05.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameCMLable: UILabel!
    @IBOutlet weak var mainSatusLable: UILabel!
    @IBOutlet weak var bankLable: UILabel!
    
    // status Coffee Lables
    
    @IBOutlet weak var statusIceCreamLable: UILabel!
    @IBOutlet weak var statusMilkLable: UILabel!
    @IBOutlet weak var statusCupsLable: UILabel!
    @IBOutlet weak var statusGraceLable: UILabel!
    @IBOutlet weak var statusWaterLable: UILabel!
    @IBOutlet weak var statusTrashLable: UILabel!
    
    
    @IBOutlet weak var statusCashboxLable: UILabel!
    @IBOutlet weak var statusCountsCupsLable: UILabel!
    
    // Buttons fill up!
    
    
    let lavazza = CoffeeMachine(name: "LAVAZZA")

    override func viewDidLoad() {
        super.viewDidLoad()

        nameCMLable.text = lavazza.name
        
    } //End viewDidLoad

    // - Cash
    @IBAction func putTenCentButton(_ sender: Any) {
        lavazza.statusCash += 0.1
        updateBank()
    }
    @IBAction func put50CentButton(_ sender: Any) {
        lavazza.statusCash += 0.5
        updateBank()
    }
    
    @IBAction func putOneDollarButton(_ sender: Any) {
        lavazza.statusCash += 1
        updateBank()
    }
    
    @IBAction func putTwoDollarsButton(_ sender: Any) {
        lavazza.statusCash += 2
        updateBank()
    }
    
    
    
    // - Coffee
    
    @IBAction func espressoButton(_ sender: Any) {
        mainSatusLable.text = lavazza.makeADrink(drink: .espresso)
        
        statusTanks()
        updateBank()
        
    }
    
    @IBAction func glaceButton(_ sender: Any) {
        mainSatusLable.text = lavazza.makeADrink(drink: .glace)
        statusTanks()
        updateBank()
    }
    
    @IBAction func americanoButton(_ sender: Any) {
        mainSatusLable.text = lavazza.makeADrink(drink: .americano)
        statusTanks()
        updateBank()
    }
    
 // Buttons fill up
    
    
    @IBAction func fillUpIceCreamButton(_ sender: Any) {
        lavazza.statusIceCreamTank += 150
        mainSatusLable.text = "Ice Cream Tank fill up"
        statusIceCreamLable.text = "IceCream: \(lavazza.statusIceCreamTank)"
    }
    
    @IBAction func fillUpMilkButton(_ sender: Any) {
        lavazza.statusMilkTank += 1000
        mainSatusLable.text = "Milk Tank fill up"
        statusMilkLable.text = "Milk:  \(lavazza.statusMilkTank)"
    }
    
    @IBAction func fillUpCupsButton(_ sender: Any) {
        lavazza.statusCups += 10
        mainSatusLable.text = "Cups added"
        statusCupsLable.text = "Cups: \(lavazza.statusCups)"
    }
    
    @IBAction func fillUpGrainceButton(_ sender: Any) {
        lavazza.statusGrainsTank += 100
        mainSatusLable.text = "Graince added"
        statusGraceLable.text = "Grace:  \(lavazza.statusGrainsTank)"
    }
    
    @IBAction func fillUpWaterButton(_ sender: Any) {
        lavazza.statusWaterTank += 1000
        mainSatusLable.text = "Water Tank fill up"
        statusWaterLable.text = "Water: \(lavazza.statusWaterTank)"
    }
    
    @IBAction func clearTrashButton(_ sender: Any) {
        lavazza.statusTrashTank = 0
        mainSatusLable.text = "Trash clean UP"
        statusTrashLable.text = "Tank with trash is a clean"
    }
    
    
    func statusTanks() {
        
        statusIceCreamLable.text = "IceCream: \(lavazza.statusIceCreamTank)"
        statusGraceLable.text = "Grace: \(lavazza.statusGrainsTank)"
        statusMilkLable.text = "Milk: \(lavazza.statusMilkTank)"
        statusWaterLable.text = "Water: \(lavazza.statusWaterTank)"
        statusCupsLable.text = "Cups: \(lavazza.statusCups)"
        statusTrashLable.text = "Trash: \(lavazza.statusTrashTank)"
    }
    
    func updateBank() {
        bankLable.text = "Your bank is: \(lavazza.statusCash) dollars."
        countingHouse()
    }
    
    func countingHouse() {
        statusCashboxLable.text = "CashBox: \(lavazza.statusCashBox) dollars."
        statusCountsCupsLable.text = "Total Cups: \(lavazza.statusCupCount) pcs."
    }
} // End ViewController

