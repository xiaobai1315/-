//
//  VerticalProgress.swift
//  testswft
//
//  Created by Jermy on 2018/9/18.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

class VerticalProgress: BaseProgress {

    override func getRect() -> CGRect {
        return CGRect(x: 200, y: 200, width: 100, height: 40)
    }
    
    override func draw(view: UIView) {
        
        let rect = getRect()
        
        let w: Float = 5
        let h: Float = 5
        let margin = (Float(rect.size.height) - h * Float(progressCount)) / 4
        var y: Float = 0
        let x = Float(Float(rect.size.width) - w) * 0.5 + Float(rect.origin.x)
        
        for i in 0..<progressCount {
            
            y = Float(i) * (h + margin) + Float(rect.origin.y)
            
            let layer = CAShapeLayer()
            layer.frame = CGRect(x: CGFloat(x), y: CGFloat(y), width: CGFloat(w), height: CGFloat(h))
            layer.fillColor = UIColor.black.cgColor
            layer.strokeColor = UIColor.black.cgColor
            layer.path = UIBezierPath(ovalIn: layer.bounds).cgPath
            view.layer.addSublayer(layer)
        }
    }
}
