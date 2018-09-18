//
//  ViewController.swift
//  testswft
//
//  Created by lulu on 2017/12/26.
//  Copyright © 2017年 lulu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        self.view.backgroundColor = UIColor.white
        
//        let ice = OrangeJuiceAdditivesIce()
//        let bigOrange = BigOrangeJuice(additive: ice)
//        bigOrange.drink()
//
//        let noIce = OrangeJuiceAdditivesNoIce()
//        let smallOrange = SmallOrangeJuice(additive: noIce)
//        smallOrange.drink()
        
        
//        let view = ProgressViewOrginal(frame: CGRect(x: 100, y: 100, width: 100, height: 40), progressType: .Horizontal)
//
//        self.view.addSubview(view)
//
//        let view2 = ProgressViewOrginal(frame: CGRect(x: 200, y: 200, width: 40, height: 100), progressType: .Vertical)
//
//        self.view.addSubview(view2)
        
        let view = ProgressView(progressType: BaseProgress.ProgressViewType.Horizontal)
        self.view.addSubview(view)
        
        let view2 = ProgressView(progressType: BaseProgress.ProgressViewType.Vertical)
        self.view.addSubview(view2)
        
    }
}
