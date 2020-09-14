//
//  ViewController.swift
//  StopWatch
//
//  Created by 伊藤　陽香 on 2020/09/07.
//  Copyright © 2020 伊藤　陽香. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var count: Float = 0.0
    
    var timer: Timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func up(){
        //countを0.01をたす
        count = count + 0.01
        //ラベルに小数点以下2桁まで表示
        label.text = String(format: "%.2f", count)
    }

    @IBAction func start(){
        
        if !timer.isValid {
            //タイマーが動作していなかったら動かす
            timer = Timer.scheduledTimer(timeInterval: 0.01,
                                         target: self,
                                         selector:#selector(self.up),
                                         userInfo: nil,
                                         repeats: true)
        }
        
        
    }
    
    @IBAction func stop(){
        
        if timer.isValid {
            //タイマーが動作していたら停止する
            timer.invalidate()
        }
        
       // if count<= 10.20 {
            
       // }
        
        
    }
    
    @IBAction func reset() {
        
        if timer.isValid {
            //タイマーが動作していたら停止する
            timer.invalidate()
            }
        
        count = 0
        label.text = String(count)
        
        
        
    }
}

