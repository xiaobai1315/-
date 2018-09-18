//
//  OrangeJuice.swift
//  testswft
//
//  Created by Jermy on 2018/9/18.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

//抽象的橙汁类，分为两个维度：杯子规格和添加剂，这两个维度是相互独立的，而且可以单独作为一个类存在
//添加剂可以作为OrangeJuice的属性，杯子规格通过OrangeJuice的子类实现
class OrangeJuice {
    
    var additive: OrangeJuiceAdditives
    
    init(additive: OrangeJuiceAdditives) {
        self.additive = additive
    }
    
    func drink() {
        print("drink orange juice with \(additive.info())")
    }
}
