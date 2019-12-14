//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Usama Sadiq on 12/14/19.
//  Copyright © 2019 Usama Sadiq. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTXT: CurrencyTextFied!
    @IBOutlet weak var priceTXT: CurrencyTextFied!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.titleLabel?.text = " Calculate"
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTXT.inputAccessoryView = calcBtn
        priceTXT.inputAccessoryView = calcBtn
    }

    
    @objc func calculate(){
        print("Calculate button pressed")
    }

}

