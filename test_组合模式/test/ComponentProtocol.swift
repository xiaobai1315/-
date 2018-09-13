//
//  ComponentProtocol.swift
//  test
//
//  Created by Jermy on 2018/9/13.
//  Copyright © 2018年 Jermy. All rights reserved.
//

enum ComponentError: Error {
    case noElement
    case outOfRange
    case canNotAddSubComponent
    case leafComponent
}

import UIKit

//抽象根节点
protocol ComponentProtocol {
    
    var name: String { get }
    
    //添加子节点
    func addSubComponent(component: ComponentProtocol) throws
    
    //获取子节点
    func getComponent(index: Int) throws -> ComponentProtocol
    
    //删除子节点
    func removeComponent(index: Int) throws
    
    //输出所有子节点
    func printSubComponent()
    
    
}
