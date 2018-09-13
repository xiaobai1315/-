//
//  HJSender_undo.swift
//  testswft
//
//  Created by lulu on 2018/9/7.
//  Copyright © 2018年 lulu. All rights reserved.
//
//支持操作撤销

import UIKit

class HJSender_undo: NSObject {
    private var computer: HJComputer
    private var poweronCommand: HJPowerOnCommand
    private var poweroffCommand: HJPowerOffCommand
    
    //保存所有操作的数据
    lazy private var commandArray: [HJComputerCommandProtocol] = [HJComputerCommandProtocol]()
    
    init(with computer: HJComputer) {
        self.computer = computer
        self.poweronCommand = HJPowerOnCommand(with: self.computer)
        self.poweroffCommand = HJPowerOffCommand(with: self.computer)
    }
    
    func poweronComputer() {
        //保存操作
        addCommand(command: HJPowerOnCommand(with: self.computer))
        
        self.poweronCommand.excute()
    }
    
    func poweroffComputer() {
        //保存操作
        addCommand(command: HJPowerOffCommand(with: self.computer))
        
        self.poweroffCommand.excute()
    }
    
    func addCommand(command: HJComputerCommandProtocol) {
        self.commandArray.append(command)
    }
    
    //撤销最后一步操作
    func undo() {
        
        self.commandArray.removeLast().cancelExcute()
    }
    
    //撤销全部操作
    func undoAll() {
        for command in commandArray {
            command.cancelExcute()
        }
        self.commandArray.removeAll()
    }
    
    //恢复操作
    func recover() {
        for command in commandArray {
            command.excute()
        }
    }
}
