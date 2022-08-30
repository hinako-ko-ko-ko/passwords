//
//  ViewController.swift
//  Password
//
//  Created by 中井日向子 on 2022/08/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!

    //カウント表示用ラベル
    @IBOutlet var countLabel: UILabel!
    
    var password: Int = 1815
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func start(){
        for i in 0...9999 {
            
            countLabel.text = String(i)
            
            //処理を0.0005秒待機する
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            
            
            if i == password {
                
                var digits = [Int]()
                
                for _ in 0...3{
                        digits.append(password % 10)
                        password = password / 10
            }
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
               
                
            }
        }
    }

    @IBAction func reset(){
        //password再設定
        password = 1815
        
        
        countLabel.text = "スタートボタンを押して解析開始"
        
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        
        
    }
}
