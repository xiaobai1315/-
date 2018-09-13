//
//  ViewController.swift
//  testswft
//
//  Created by lulu on 2017/12/26.
//  Copyright © 2017年 lulu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var _textfield: UITextField?
    
    override func viewDidLoad() {
        
        let rect = CGRect(x: 100, y: 100, width: 100, height: 40)
        let textfield = UITextField(frame: rect)
        textfield.backgroundColor = UIColor.gray
        _textfield = textfield
        self.view.addSubview(textfield)
        
        textfield.text = "test"
        
        self.undoManager?.registerUndo(withTarget: self, selector: #selector(operation), object: nil)
        
        let undoBtn = UIButton(type: UIButtonType.custom)
        undoBtn.frame = CGRect(x: 100, y: 200, width: 100, height: 40)
        undoBtn.addTarget(self, action: #selector(undo), for: UIControlEvents.touchUpInside)
        undoBtn.setTitle("undo", for: UIControlState.normal)
        self.view.addSubview(undoBtn)
        
        let redoBtn = UIButton(type: UIButtonType.custom)
        redoBtn.frame = CGRect(x: 220, y: 200, width: 100, height: 40)
        redoBtn.addTarget(self, action: #selector(redo), for: UIControlEvents.touchUpInside)
        redoBtn.setTitle("redoBtn", for: UIControlState.normal)
        self.view.addSubview(redoBtn)
    
    }
    
    @objc func operation() {
        if (self.undoManager?.canRedo)! {
            print("can redo")
        }else if (self.undoManager?.canUndo)! {
            print("can undo")
        }
    }
    
    @objc func undo() {
        self.undoManager?.undo()
    }
    
    @objc func redo() {
        self.undoManager?.redo()
    }
    
}
