//
//  Mainboard.swift
//  testswft
//
//  Created by Jermy on 2018/9/19.
//  Copyright © 2018年 lulu. All rights reserved.
//

import UIKit

class Mainboard: MainboardProtocol {

    var playCard: PlayCard?
    var soundCard: SoundCard?
    var cpu: CPU?
    
    func setPlayCard(playCard: PlayCard) {
        self.playCard = playCard
    }
    
    func setSoundCard(soundCard: SoundCard) {
        self.soundCard = soundCard
    }
    
    func setCPU(cpu: CPU) {
        self.cpu = cpu
    }
    
    func change(hardWare: Hardware) {
        if hardWare is PlayCard {
            playVideo()
        }else if hardWare is SoundCard {
            playMusic()
        }
    }
    
    func playVideo() {
        print("play video")
    }
    
    func playMusic() {
        print("play music")
    }
}
