//
//  HorizontalProgress.swift
//  testswft
//
//  Created by Jermy on 2018/9/18.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

class HorizontalProgress: BaseProgress {

    override func getRect() -> CGRect {
        return CGRect(x: 100, y: 100, width: 100, height: 40)
    }
    
    override func draw(view: UIView) {
        
        let rect = getRect()
        
        let w: Float = 5
        let h: Float = 5
        var x = Float(0)
        let y = Float(Float(rect.size.height) - h) * 0.5 + Float(rect.origin.y)
        
        let margin = (Float(rect.size.width) - w * Float(progressCount)) / 4
        
        for i in 0..<progressCount {
            
            x = Float(i) * (h + margin) + Float(rect.origin.x)
            
            let layer = CAShapeLayer()
            layer.frame = CGRect(x: CGFloat(x), y: CGFloat(y), width: CGFloat(w), height: CGFloat(h))
            layer.fillColor = UIColor.black.cgColor
            layer.strokeColor = UIColor.black.cgColor
            layer.path = UIBezierPath(ovalIn: layer.bounds).cgPath
            view.layer.addSublayer(layer)
        }
    }
}
