//
//  ViewController.swift
//  firstAppJan30
//
//  Created by Sierra 4 on 30/01/17.
//  Copyright © 2017 codeBrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtAmount: UITextField!
    @IBOutlet weak var txtRateOfInterest: UITextField!
    @IBOutlet weak var txtTime: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnOnClickToCalculate: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnOnClickToCalculate(_ sender: Any) {
        guard let Amount = Int(txtAmount.text ?? "0")else{
                return
        }
        guard let Rate = Int(txtRateOfInterest.text ?? "0")else{
            return
        }
        guard let Time = Int(txtTime.text ?? "0")else{
            return
        }
        var compoundInterest = Amount * (1 + Rate)
        for _ in 1...Time {
            compoundInterest *= Time
        }
        lblResult.text = "\(compoundInterest)"


    }

}

