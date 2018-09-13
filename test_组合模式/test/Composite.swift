//
//  Composite.swift
//  test
//
//  Created by Jermy on 2018/9/13.
//  Copyright © 2018年 Jermy. All rights reserved.
//

import UIKit

//子节点
class Composite: ComponentProtocol {
    
    var name: String
    
    lazy var components = [ComponentProtocol]()
    
    init(name: String) {
        self.name = name
    }
    
    func addSubComponent(component: ComponentProtocol) throws{
        components.append(component)
    }
    
    func getComponent(index: Int) throws -> ComponentProtocol {

        guard components.count > 0 else {
            throw ComponentError.noElement
        }
        
        guard components.count > index else {
            throw ComponentError.outOfRange
        }
        
        return components[index]
    }

    func removeComponent(index: Int) throws {
        
        guard components.count > 0 else {
            throw ComponentError.noElement
        }
        
        guard components.count > index else {
            throw ComponentError.outOfRange
        }
        
        components.remove(at: index)
    }

    func printSubComponent() {
        print(self.name)
        for component in components {
            component.printSubComponent()
        }
    }
}
