//
//  TicketProtocol.swift
//  testswft
//
//  Created by Jermy on 2018/9/14.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

//创建车票协议
protocol TicketProtocol {
    var from: String {get}
    var to: String {get}
    var bunk: String {get}
    var price: Int {get}
    
    func showTicketInfo(bunk: String)
}
