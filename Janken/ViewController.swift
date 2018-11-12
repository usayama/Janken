//
//  ViewController.swift
//  Janken
//
//  Created by Usayama 2018/11/10.
//  Copyright © 2018 usayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        // 新しいじゃんけんの結果を一時的に格納する変数を設ける
        var newAnswerNumber: Int
        
        // ランダムに結果を出すが、前回の結果と違うも結果がでるまでループ
        repeat {
            // 0, 1, 2の値をランダムに算出
            newAnswerNumber = Int.random(in: 0 ... 2)
        } while answerNumber == newAnswerNumber
        
        // 新しいじゃんけん結果を格納
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {
            // グー
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
        } else if answerNumber == 1 {
            // チョキ
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
        } else if answerNumber == 2 {
            // パー
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
        }
        
    }
}

