//
//  Ticket.swift
//  testswft
//
//  Created by Jermy on 2018/9/14.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

//ticket 类
class Ticket: TicketProtocol {
    
    var from: String
    var to: String
    var bunk: String
    var price: Int
    
    init(from: String, to: String) {
        self.from = from
        self.to = to
        self.bunk = ""
        self.price = 0
    }
    
    func showTicketInfo(bunk: String) {
        self.bunk = bunk
        
        switch bunk {
        case "硬座":
            self.price = 100
        case "卧铺":
            self.price = 200
        case "高铁":
            self.price = 300
        default:
            self.price = 0
        }
        
        print("起点：\(self.from), 终点：\(self.to), 座位：\(self.bunk)，票价：\(self.price)")
    }
}
