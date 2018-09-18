//
//  Computer.swift
//  testswft
//
//  Created by lulu on 2018/9/19.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

class Computer: NSObject {

    var game = Game()
    var camera = Camera()
    
    func playGame() {
        game.start()
        camera.start()
        camera.takePohto()
        camera.end()
        game.end()
    }
}
