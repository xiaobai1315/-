//
//  ViewController.swift
//  test
//
//  Created by Jermy on 2018/1/30.
//  Copyright © 2018年 Jermy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        let component1 = Composite(name: "component1")
        let component2 = Composite(name: "component2")
        let leaf1 = Leaf(name: "leaf1")
        let leaf2 = Leaf(name: "leaf2")
        let leaf3 = Leaf(name: "leaf3")
        let leaf4 = Leaf(name: "leaf4")
        
        try! component1.addSubComponent(component: leaf1)
        try! component1.addSubComponent(component: leaf2)
        
        try! component2.addSubComponent(component: leaf3)
        try! component2.addSubComponent(component: leaf4)
        
        try! component1.addSubComponent(component: component2)
        
        component1.printSubComponent()
        
    }
}
