//
//  ViewController.swift
//  testswft
//
//  Created by lulu on 2017/12/26.
//  Copyright © 2017年 lulu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var passsword: UITextField!
    
    override func viewDidLoad() {
        
        self.view.backgroundColor = UIColor.white

        
    }
    
    @IBAction func login(_ sender: Any) {
        
    }
    
    @IBAction func cancel(_ sender: Any) {
        
    }
}



extension ViewController {
    func test() {
        
        let mainboard = Mainboard()

        let playCard = PlayCard(mainboard: mainboard)
        let soundCard = SoundCard(mainboard: mainboard)

        playCard.load()
        soundCard.load()
    }
}
