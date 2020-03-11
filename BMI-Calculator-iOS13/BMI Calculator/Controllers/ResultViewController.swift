//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Alex on 08.03.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviseLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLable.text = bmiValue
        adviseLable.text = bmiAdvice
        view.backgroundColor = bmiColor
    }
    
    @IBAction func recalcButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
