//
//  ViewController.swift
//  Text Field Delegate Practice
//
//  Created by Christopher Crookes on 2020-07-12.
//  Copyright © 2020 Christopher Crookes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: - Outlets
    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var currencyTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    @IBOutlet weak var lockTextFieldSwitch: UISwitch!
    
    // MARK: - Global variables
    let zipcodeTextFieldDelegate = ZipcodeTextFieldDelegate()
    let currencyTextFieldDelegate = CurrencyTextFieldDelegate()
    
    // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // assign delegates to text fields
        self.zipcodeTextField.delegate = zipcodeTextFieldDelegate
        self.currencyTextField.delegate = currencyTextFieldDelegate
        self.lockableTextField.delegate = self
    }

    // MARK: - UITextField delegate methods
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return lockTextFieldSwitch.isOn
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return lockTextFieldSwitch.isOn
    }
}

