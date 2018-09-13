//
//  HJPowerOffCommand.swift
//  testswft
//
//  Created by lulu on 2018/9/7.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

class HJPowerOffCommand: HJComputerCommandProtocol {
    
    private var computer: HJComputer
    
    init(with computer: HJComputer) {
        self.computer = computer
    }
    
    func excute() {
        self.computer.shutOff()
    }
    
    func cancelExcute() {
        self.computer.cancelStartOff()
    }
}
