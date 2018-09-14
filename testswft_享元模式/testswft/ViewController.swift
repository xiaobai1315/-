//
//  ViewController.swift
//  testswft
//
//  Created by lulu on 2017/12/26.
//  Copyright © 2017年 lulu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var _textfield: UITextField?
    
    override func viewDidLoad() {
        
        //循环访问同一个区间的车票信息，只会创建一个对象
        for _ in 0..<100 {
            let ticket = TicketFactory.ticket(from: "北京", to: "上海")
            ticket.showTicketInfo(bunk: "硬座")
        }
    }
}
