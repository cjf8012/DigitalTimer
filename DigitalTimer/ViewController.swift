//
//  ViewController.swift
//  DigitalTimer
//
//  Created by D7703_15 on 2018. 4. 11..
//  Copyright © 2018년 D7703_15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var Switch: UISwitch!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
//클로져(Closure)의 사용 , func에 @objc를 사용 안해도 된다.
//        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in self.updateTime()})
        Switch.setOn(false, animated: true)
    }
//    @objc func updateTime(){
//        let date = Date()
//        let formatter = DateFormatter()
//        formatter.dateFormat = "HH:mm:ss EE YYYY"
//        timeLabel.text = formatter.string(from: date)
//    }
    func updateTime(){
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EE YYYY"
        timeLabel.text = formatter.string(from: date)
    }
    @IBAction func TimerStart(_ sender: Any) {
        if Switch.isOn == true {
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in self.updateTime()})
        } else {
            myTimer.invalidate()
        }
    }
    
}

