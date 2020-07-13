//
//  ViewController.swift
//  Text Field Delegate Practice
//
//  Created by Christopher Crookes on 2020-07-12.
//  Copyright © 2020 Christopher Crookes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var currencyTextField: UITextField!
    
    let zipcodeTextFieldDelegate = ZipcodeTextFieldDelegate()
    let currencyTextFieldDelegate = CurrencyTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.zipcodeTextField.delegate = zipcodeTextFieldDelegate
        self.currencyTextField.delegate = currencyTextFieldDelegate
    }


}

