//
//  ProgressView.swift
//  testswft
//
//  Created by Jermy on 2018/9/18.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

//BaseProgress只定义了progress的样式和绘制方法，HorizontalProgress和VerticalProgress是BaseProgress的子类，用于具体的绘制
//ProgressView根据progressType创建不同的progressView，调用不同的构造方法
class ProgressView: UIView {
    
    var progressType: BaseProgress.ProgressViewType
    
    init(progressType: BaseProgress.ProgressViewType) {
        self.progressType = progressType
        super.init(frame: CGRect.zero)
        
        initProgress()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initProgress() {
        
        switch progressType {
        case BaseProgress.ProgressViewType.Horizontal:
            
            let view = HorizontalProgress()
            view.draw(view: self)
            
        case BaseProgress.ProgressViewType.Vertical:
            let view = VerticalProgress()
            view.draw(view: self)
        }
    }
}
