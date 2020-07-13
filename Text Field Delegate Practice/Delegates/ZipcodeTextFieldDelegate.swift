//
//  ZipcodeTextFieldDelegate.swift
//  Text Field Delegate Practice
//
//  Created by Christopher Crookes on 2020-07-12.
//  Copyright © 2020 Christopher Crookes. All rights reserved.
//

import Foundation
import UIKit

class ZipcodeTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // restrict size of text field code modified from:
        // https://www.hackingwithswift.com/example-code/uikit/how-to-limit-the-number-of-characters-in-a-uitextfield-or-uitextview
        
        // get the current text, or use an empty string if that failed
        let currentText = textField.text ?? ""

        // attempt to read the range they are trying to change, or exit if we can't
        guard let stringRange = Range(range, in: currentText) else { return false }
        
        // check if string is numeric. Return false if it is not
        if Int(string) == nil {
            return false
        }
        
        // add their new text to the existing text
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)

        // make sure the result is under 5 characters
        return updatedText.count <= 5
        
    }
}
