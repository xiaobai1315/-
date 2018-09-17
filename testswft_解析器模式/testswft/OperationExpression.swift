//
//  OperationExpression.swift
//  testswft
//
//  Created by Jermy on 2018/9/15.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

//运算符解析器,接收两个NumberExpression类型的参数
class OperationExpression: ExpressionProtocol {
    
    var left: ExpressionProtocol
    var right: ExpressionProtocol
    
    init(left: ExpressionProtocol, right: ExpressionProtocol) {
        self.left = left
        self.right = right
    }
    
    func interpret() -> Int {
        return 0
    }
}
