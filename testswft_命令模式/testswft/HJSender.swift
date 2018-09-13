//
//  HJSender.swift
//  testswft
//
//  Created by lulu on 2018/9/7.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

class HJSender: NSObject {
    private var computer: HJComputer
    private var poweronCommand: HJPowerOnCommand
    private var poweroffCommand: HJPowerOffCommand
    
    init(with computer: HJComputer) {
        self.computer = computer
        self.poweronCommand = HJPowerOnCommand(with: self.computer)
        self.poweroffCommand = HJPowerOffCommand(with: self.computer)
    }
    
    func poweronComputer() {
        self.poweronCommand.excute()
    }
    
    func poweroffComputer() {
        self.poweroffCommand.excute()
    }
}
