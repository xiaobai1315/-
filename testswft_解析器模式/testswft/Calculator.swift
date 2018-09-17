//
//  Calculator.swift
//  testswft
//
//  Created by Jermy on 2018/9/15.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

//计算器类
class Calculator: NSObject {

    //存储运算结果
    var stack = [ExpressionProtocol]()
    
    //缓冲区，存放暂时无法处理从数据和操作
    var buffer = [String]()
    
    var currentIndex: Int = 0
    
    init(expression: String) {
        
        //将字符串以空格为分隔符，转成数组
        let array = expression.characters.split(separator: " ").map(String.init)
        
        var left: ExpressionProtocol?, right: ExpressionProtocol?
        
        for index in 0..<array.count {
            
            if index != currentIndex {
                continue
            }
            
            currentIndex = index + 1

            let value = array[index]
            //存储第一个终结符
            if index == 0 {
                stack.append(NumberExpression(number: value))
                continue;
            }
            
            //做加减法运算时，要多往后取一个运算符，如果是乘或除运算符，需要将当前运算符以及运算符之后的数字入栈，然后处理乘或除运算
            if value == "+" || value == "-" {   //加法运算,
                
                if index + 2 < array.count {
                    if array[index + 2] == "*" || array[index + 2] == "/" {
                        stack.append(NumberExpression(number: array[index + 1]))
                        buffer.append(array[index])
                        currentIndex = index + 2
                        continue
                    }
                }
                
                if buffer.count != 0 {
                    
                    left = stack.removeLast()
                    right = stack.removeLast()
                    
                    if buffer[0] == "+" {
                    
                        stack.append(AddOperationExpression(left: left!, right: right!))
                    }else if buffer[0] == "-" {
                        
                        stack.append(MinusOperationExpression(left: left!, right: right!))
                    }
                    
                    buffer.removeLast()
                }
                
                left = stack.removeLast()
                right = NumberExpression(number: array[index + 1])
                
                if (value == "+") {
                    stack.append(AddOperationExpression(left: left!, right: right!))
                }else {
                    stack.append(MinusOperationExpression(left: left!, right: right!))
                }
                
            } else if value == "*" {    //乘法运算
                
                left = stack.removeLast()
                right = NumberExpression(number: array[index + 1])
                stack.append(MultiplyOperationExpression(left: left!, right: right!))
                
            } else if value == "/" {    //除法运算
            
                left = stack.removeLast()
                right = NumberExpression(number: array[index + 1])
                stack.append(DividedOperationExpression(left: left!, right: right!))
            }
        }
        
        if buffer.count != 0 {
            
            left = stack.removeLast()
            right = stack.removeLast()
            
            if buffer[0] == "+" {
                
                stack.append(AddOperationExpression(left: left!, right: right!))
            }else if buffer[0] == "-" {
                
                stack.append(MinusOperationExpression(left: left!, right: right!))
            }
        }
    }
    
    func calculate() -> Int {
        return stack.removeLast().interpret()
    }
}
