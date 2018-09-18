//
//  BaseProgress.swift
//  testswft
//
//  Created by Jermy on 2018/9/18.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

//基类，
class BaseProgress {

    let progressCount = 5
    
    //进度条样式
    public enum ProgressViewType {
        case Horizontal
        case Vertical
    }
    
    //进度条View大小
    func getRect() -> CGRect {
        return CGRect.zero
    }
    
    //绘制操作
    func draw(view: UIView) {
        
    }
}
