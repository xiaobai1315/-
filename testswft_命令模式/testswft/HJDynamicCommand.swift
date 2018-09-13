//
//  HJDynamicCommand.swift
//  testswft
//
//  Created by lulu on 2018/9/7.
//  Copyright © 2018年 lulu. All rights reserved.
//通过闭包传递命令

import UIKit

class HJDynamicCommand: HJComputerCommandProtocol {

    private var computer: HJComputer
    private var command: (HJComputer) -> Void
    
    init(with computer: HJComputer, command:@escaping (HJComputer) -> Void) {
        self.computer = computer
        self.command = command
    }
    
    func excute() {
        self.command(self.computer)
    }
    
    func cancelExcute() {
        self.computer.cancelStartOff()
    }
    
    class func createCommand(receiver: HJComputer, command: @escaping (HJComputer) -> Void) -> HJComputerCommandProtocol {
        return HJDynamicCommand(with: receiver, command: command)
    }
}
