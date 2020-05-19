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
    
    
    
    let LAVAZZA = CM(name: "LAVAZZA")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameCMLable.text = LAVAZZA.name
        
    } //End viewDidLoad

    // - Cash
    @IBAction func putTenCentButton(_ sender: Any) {
        LAVAZZA.statusCash += 0.1
        updateBank()
    }
    @IBAction func put50CentButton(_ sender: Any) {
        LAVAZZA.statusCash += 0.5
        updateBank()
    }
    
    @IBAction func putOneDollarButton(_ sender: Any) {
        LAVAZZA.statusCash += 1
        updateBank()
    }
    
    @IBAction func putTwoDollarsButton(_ sender: Any) {
        LAVAZZA.statusCash += 2
        updateBank()
    }
    
    
    
    // - Coffee
    
    @IBAction func espressoButton(_ sender: Any) {
        mainSatusLable.text = LAVAZZA.makeEspresso()
        statusTanks()
        updateBank()
        
    }
    
    @IBAction func glaceButton(_ sender: Any) {
        mainSatusLable.text = LAVAZZA.makeGlace()
        statusTanks()
        updateBank()
    }
    
    @IBAction func americanoButton(_ sender: Any) {
        mainSatusLable.text = LAVAZZA.makeAmericano()
        statusTanks()
        updateBank()
    }
    
 // Buttons fill up
    
    
    @IBAction func fillUpIceCreamButton(_ sender: Any) {
        LAVAZZA.statusIceCreamTank += 150
        mainSatusLable.text = "Ice Cream Tank fill up"
        statusIceCreamLable.text = "IceCream: \(LAVAZZA.statusIceCreamTank)"
    }
    
    @IBAction func fillUpMilkButton(_ sender: Any) {
        LAVAZZA.statusMilkTank += 1000
        mainSatusLable.text = "Milk Tank fill up"
        statusMilkLable.text = "Milk:  \(LAVAZZA.statusMilkTank)"
    }
    
    @IBAction func fillUpCupsButton(_ sender: Any) {
        LAVAZZA.statusCups += 10
        mainSatusLable.text = "Cups added"
        statusCupsLable.text = "Cups: \(LAVAZZA.statusCups)"
    }
    
    @IBAction func fillUpGrainceButton(_ sender: Any) {
        LAVAZZA.statusGrainsTank += 100
        mainSatusLable.text = "Graince added"
        statusGraceLable.text = "Grace:  \(LAVAZZA.statusGrainsTank)"
    }
    
    @IBAction func fillUpWaterButton(_ sender: Any) {
        LAVAZZA.statusWaterTank += 1000
        mainSatusLable.text = "Water Tank fill up"
        statusWaterLable.text = "Water: \(LAVAZZA.statusWaterTank)"
    }
    
    @IBAction func clearTrashButton(_ sender: Any) {
        LAVAZZA.statusTrashTank = 0
        mainSatusLable.text = "Trash clean UP"
        statusTrashLable.text = "Tank with trash is a clean"
    }
    
    
    func statusTanks() {
        
        statusIceCreamLable.text = "IceCream: \(LAVAZZA.statusIceCreamTank)"
        statusGraceLable.text = "Grace: \(LAVAZZA.statusGrainsTank)"
        statusMilkLable.text = "Milk: \(LAVAZZA.statusMilkTank)"
        statusWaterLable.text = "Water: \(LAVAZZA.statusWaterTank)"
        statusCupsLable.text = "Cups: \(LAVAZZA.statusCups)"
        statusTrashLable.text = "Trash: \(LAVAZZA.statusTrashTank)"
    }
    
    func updateBank() {
        bankLable.text = "Your bank is: \(LAVAZZA.statusCash) dollars."
        countingHouse()
    }
    
    func countingHouse() {
        statusCashboxLable.text = "CashBox: \(LAVAZZA.statusCashBox) dollars."
        statusCountsCupsLable.text = "Total Cups: \(LAVAZZA.statusCupCount) pcs."
    }
} // End ViewController

