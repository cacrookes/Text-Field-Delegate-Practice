//
//  CurrencyTextFieldDelegate.swift
//  Text Field Delegate Practice
//
//  Created by Christopher Crookes on 2020-07-12.
//  Copyright © 2020 Christopher Crookes. All rights reserved.
//

import Foundation
import UIKit

class CurrencyTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? "$0.00"
                
        // attempt to read the range they are trying to change, or exit if we can't
        guard let stringRange = Range(range, in: currentText) else { return false }
        
        // add their new text to the existing text
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        
        // grab the numeric part of the string
        if var digits = Double(updatedText.dropFirst(1)) {
            // we want to display the results to two significant digits
            let formatter = NumberFormatter()
            formatter.maximumFractionDigits = 2
            formatter.minimumFractionDigits = 2
            
            // detect if a character was deleted or added.
            if updatedText.count < currentText.count {
                digits = digits / 10
            } else {
                digits = digits * 10
            }
            let stringDigits = formatter.string(for: (digits)) ?? "0.00"
            textField.text = "$" + stringDigits
        }
        
        return false
        
    }
    
}
