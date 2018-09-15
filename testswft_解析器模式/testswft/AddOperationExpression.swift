//
//  AddOperationExpression.swift
//  testswft
//
//  Created by Jermy on 2018/9/15.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

//加法运算，继承自OperationExpression
class AddOperationExpression: OperationExpression {

    override func interpret() -> Int {
        return left.interpret() + right.interpret()
    }
}
