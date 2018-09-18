//
//  ProgressViewOrginal.swift
//  testswft
//
//  Created by Jermy on 2018/9/18.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

class ProgressViewOrginal: UIView {

    //进度条点个数
    private let progressCount = 5
    private var progressType: ProgressType
    
    //进度条样式
    public enum ProgressType {
        case Horizontal
        case Vertical
    }
    
    init(frame: CGRect, progressType: ProgressType) {
        
        //子类属性的初始化必须在调用父类初始化之前
        self.progressType = progressType
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        
        let w: Float = 5
        let h: Float = 5
        var margin = Float(0)
        var x = Float(0)
        var y = Float(0)
        
        for i in 0..<progressCount {
            
            x = Float(i) * (w + margin)
            
            switch self.progressType {
            case .Horizontal:
                margin = (Float(self.bounds.size.width) - w * Float(progressCount)) / 4
                x = Float(i) * (w + margin)
                y = Float(Float(self.bounds.size.height) - h) * 0.5
                break
                
            case .Vertical:
                margin = (Float(self.bounds.size.height) - h * Float(progressCount)) / 4
                y = Float(i) * (h + margin)
                x = Float(Float(self.bounds.size.width) - w) * 0.5
                break
            }
            
            let path = UIBezierPath(ovalIn: CGRect(x: CGFloat(x), y: CGFloat(y), width: CGFloat(w), height: CGFloat(h)))
            UIColor.black.setFill()
            UIColor.black.setStroke()
            path.fill()
        }
    }
}
