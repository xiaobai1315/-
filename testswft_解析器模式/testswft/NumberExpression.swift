//
//  NumberExpression.swift
//  testswft
//
//  Created by Jermy on 2018/9/15.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit


//数字解析器,根据传进来的字符串，转成Int类型
class NumberExpression: ExpressionProtocol {
    
    private var number: Int = 0;
    
    init(number: String) {
        self.number = Int(number)!
    }
    
    func interpret() -> Int {
        return self.number
    }
}
