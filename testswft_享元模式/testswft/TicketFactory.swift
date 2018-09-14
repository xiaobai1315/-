//
//  TicketFactory.swift
//  testswft
//
//  Created by Jermy on 2018/9/14.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

//车票工厂类
class TicketFactory: NSObject {
    
    static private var ticketDict = [String: TicketProtocol]()
    
    class func ticket(from: String, to: String) -> TicketProtocol {
        
        //根据区间从缓冲区查找共享对象，如果没有就创建
        let key = from + "-" + to
        if ticketDict[key] == nil {
            ticketDict[key] = Ticket(from: from, to: to)
        }
        
        return ticketDict[key]!
    }
}
