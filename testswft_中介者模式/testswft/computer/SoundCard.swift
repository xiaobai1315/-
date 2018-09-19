//
//  SoundCard.swift
//  testswft
//
//  Created by Jermy on 2018/9/19.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

class SoundCard: Hardware {

    func load() {
        self.mainBoard.change(hardWare: self)
    }
}
