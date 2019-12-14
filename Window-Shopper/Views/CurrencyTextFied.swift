//
//  CurrencyTextFied.swift
//  Window-Shopper
//
//  Created by Usama Sadiq on 12/14/19.
//  Copyright © 2019 Usama Sadiq. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextFied: UITextField {

    override func prepareForInterfaceBuilder() {
         customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2984803082)
        layer.cornerRadius = 10.0
        textAlignment = .center

        if let ph = placeholder
        {
            let place = NSAttributedString(string: ph, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}
//init(string str: String, attributes attrs: [NSAttributedString.Key : Any]? = nil)
