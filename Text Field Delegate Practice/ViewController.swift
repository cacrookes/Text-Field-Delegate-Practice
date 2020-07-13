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
    
    let zipcodeTextFieldDelegate = ZipcodeTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.zipcodeTextField.delegate = zipcodeTextFieldDelegate
    }


}

