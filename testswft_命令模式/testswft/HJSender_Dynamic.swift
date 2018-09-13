//
//  HJSender_Dynamic.swift
//  testswft
//
//  Created by lulu on 2018/9/7.
//  Copyright © 2018年 lulu. All rights reserved.
//
//动态调用，使用闭包传递操作

import UIKit

class HJSender_Dynamic: NSObject {
    private var computer: HJComputer
    
    //保存所有操作的数据
    lazy private var commandArray: [HJComputerCommandProtocol] = [HJComputerCommandProtocol]()
    
    //定义闭包 () -> Void来接收要执行的操作
    init(with computer: HJComputer) {
        self.computer = computer
    }
    
    func poweronComputer() {
        addCommand(command: HJComputer.startUp)
        self.computer.startUp()
    }
    
    func poweroffComputer() {
        addCommand(command: HJComputer.shutOff)
        self.computer.shutOff()
    }
    
    func addCommand(command: @escaping (HJComputer) -> () -> Void) {
        self.commandArray.append(HJDynamicCommand(with: self.computer) { (computer) in
            command(computer)()
        })
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
