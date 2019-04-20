//
//  ViewController.swift
//  window-shopper
//
//  Created by Shawn Baugh on 4/19/19.
//  Copyright © 2019 Shawn Baugh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.backgroundColor = #colorLiteral(red: 0.8373425854, green: 0.1205737238, blue: 0.3066791245, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        wageText.inputAccessoryView = calculateButton
        priceText.inputAccessoryView = calculateButton
        resultsLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    @IBAction func onClearCalculatorPressed(_ sender: Any) {
        resultsLabel.isHidden = true
        hoursLabel.isHidden = true
        wageText.text = ""
        priceText.text = ""
    }
    
    @objc func calculate() {
        if let wage = wageText.text, let price = priceText.text {
            if let wageTxt = Double(wage), let priceTxt = Double(price) {
                view.endEditing(true)
                resultsLabel.isHidden = false
                hoursLabel.isHidden = false
                resultsLabel.text = "\(Wage.getHours(forWage: wageTxt, andPrice: priceTxt))"
            }
        }
    }
    @IBOutlet weak var priceText: CurrencyTextField!
    @IBOutlet weak var wageText: CurrencyTextField!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
}

