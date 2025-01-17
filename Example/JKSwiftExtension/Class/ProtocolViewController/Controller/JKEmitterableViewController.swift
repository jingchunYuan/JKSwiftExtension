//
//  JKEmitterableViewController.swift
//  JKSwiftExtension_Example
//
//  Created by IronMan on 2020/11/18.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import JKSwiftExtension

class JKEmitterableViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headDataArray = ["一、粒子发射器"]
        dataArray = [["开始发射", "只发射1次", "停止发射"]]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

// MARK: - 一、粒子发射器
extension JKEmitterableViewController: JKEmitterable {
    
    // MARK: 1.3、停止发射
    @objc func test13() {
        self.stopEmitter()
    }
    
    // MARK: 1.2、只发射1次
    @objc func test12() {
        let style = JKEmitterStyle()
        style.cellEmitterLifetime = 5
        style.cellEmitterBirthRate = 3
        style.cellFireOnce = true
        style.emitterPosition = CGPoint(x: UIScreen.main.bounds.width / 2.0, y: UIScreen.main.bounds.height - jk_kNavFrameH)
        self.startEmitter(emitterImageNames: ["good", "good1"], style: style)
    }
    
    // MARK: 1.1、开始发射
    @objc func test11() {
        let style = JKEmitterStyle()
        style.cellEmitterLifetime = 5
        style.cellEmitterBirthRate = 3
        style.emitterPosition = CGPoint(x: UIScreen.main.bounds.width / 2.0, y: UIScreen.main.bounds.height - jk_kNavFrameH)
        self.startEmitter(emitterImageNames: ["good", "good1", "good2", "good3", "good4", "good5", "good6", "good7", "good8", "good9"], style: style)
    }
}

