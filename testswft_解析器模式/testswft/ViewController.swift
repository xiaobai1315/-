//
//  ViewController.swift
//  testswft
//
//  Created by lulu on 2017/12/26.
//  Copyright © 2017年 lulu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        let str: String = "1 + 2 + 3 + 4"
        let cal = Calculator(expression: str)
        print("result = \(cal.calculate())")
    }
}
