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
    
    @IBOutlet weak var statusIceTankLable: UILabel!
    @IBOutlet weak var statusChokoTankLable: UILabel!
    @IBOutlet weak var statusIceCreamTankLable: UILabel!
    @IBOutlet weak var statusLiquorTankLable: UILabel!
    @IBOutlet weak var statusMilkTankLable: UILabel!
    @IBOutlet weak var statusGrainsTankLable: UILabel!
    @IBOutlet weak var statusWaterTankLable: UILabel!
    @IBOutlet weak var statusTrashTankLable: UILabel!
    
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
        LAVAZZA.statusCash += 1.0
        updateBank()
    }
    
    @IBAction func putTwoDollarsButton(_ sender: Any) {
        LAVAZZA.statusCash += 2.0
        updateBank()
    }
    
    func updateBank() { bankLable.text = "Your bank is: \(LAVAZZA.statusCash) dollars." }
    
    // - Coffee
    
    @IBAction func espressoButton(_ sender: Any) {
        mainSatusLable.text = LAVAZZA.makeEspresso()
        updateStatusTank()
        updateBank()
        
    }
    
    @IBAction func glaceButton(_ sender: Any) {
        mainSatusLable.text = LAVAZZA.makeGlace()
        updateStatusTank()
        updateBank()
    }
    
    
    
    @IBAction func serviceButton(_ sender: Any) {
        LAVAZZA.statusLiquorTank = 100
        LAVAZZA.statusIceCreamTank = 100
        LAVAZZA.statusIceTank = 100
        LAVAZZA.statusTrashTank = 0
        LAVAZZA.statusGrainsTank = 1000
        LAVAZZA.statusWaterTank = 1000
        LAVAZZA.statusMilkTank = 1000
        LAVAZZA.statusChokoTank = 100
        updateStatusTank()
    }
    
    func updateStatusTank() {
        
        statusIceTankLable.text = "Ice: \(LAVAZZA.statusIceTank)"
        statusChokoTankLable.text = "Chokolate: \(LAVAZZA.statusChokoTank)"
        statusMilkTankLable.text = "Milk: \(LAVAZZA.statusMilkTank)"
        statusTrashTankLable.text = "Trash: \(LAVAZZA.statusTrashTank)"
        statusWaterTankLable.text = "Water: \(LAVAZZA.statusWaterTank)"
        statusIceCreamTankLable.text = "IceCream: \(LAVAZZA.statusIceCreamTank)"
        statusGrainsTankLable.text = "Grains: \(LAVAZZA.statusGrainsTank)"
        statusLiquorTankLable.text = "Liauor: \(LAVAZZA.statusLiquorTank)"
    }
    
    
} // End ViewController

