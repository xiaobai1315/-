//
//  ExpressionProtocol.swift
//  testswft
//
//  Created by Jermy on 2018/9/15.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

//抽象表达式
protocol ExpressionProtocol {
    
    //定义解析方法，
    func interpret() -> Int
    
}
