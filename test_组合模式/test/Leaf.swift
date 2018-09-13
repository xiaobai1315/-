//
//  Leaf.swift
//  test
//
//  Created by Jermy on 2018/9/13.
//  Copyright © 2018年 Jermy. All rights reserved.
//

import UIKit

class Leaf: ComponentProtocol {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func addSubComponent(component: ComponentProtocol) throws {
        throw ComponentError.leafComponent
    }
    
    func getComponent(index: Int) throws -> ComponentProtocol {
        
        return self
    }
    
    func removeComponent(index: Int) throws {
        throw ComponentError.leafComponent
    }
    
    func printSubComponent() {
        
        print(name)
    }
}
