//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Shawn Baugh on 4/19/19.
//  Copyright © 2019 Shawn Baugh. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTextField: UITextField {
    override func prepareForInterfaceBuilder() {
        showChangesInInterface()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
       showChangesInInterface()
    }
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2 , width: size, height: size))
        let formatter = NumberFormatter()
        currencyLabel.clipsToBounds = true
        currencyLabel.backgroundColor = #colorLiteral(red: 0.3760799468, green: 0.3760799468, blue: 0.3760799468, alpha: 0.8004471628)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
    func showChangesInInterface() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 10.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
