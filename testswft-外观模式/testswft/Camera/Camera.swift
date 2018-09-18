//
//  Camera.swift
//  testswft
//
//  Created by lulu on 2018/9/19.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

class Camera: CameraProtocol {
    func start() {
        print("start camera")
    }
    
    func takePohto() {
        print("take photo")
    }
    
    func end() {
        print("close camera")
    }
}
