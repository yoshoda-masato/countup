//
//  ViewController.swift
//  CountApp
//


import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Int = 0 //カウントの結果を表示
    
    @IBOutlet weak var label: UILabel! //カウント用のラベル
    @IBOutlet weak var infoLabel: UILabel! //下部表示用のラベル
    
    @IBAction func countButton(_ sender: UIButton) {
        
        if sender.tag == 1 { //+ボタン
            
            numberOnScreen += 1 //+ボタンを押すごとに１ずつ加算
            label.text = String(numberOnScreen) //ラベルに結果を表示
            
        }
        
        else if sender.tag == 2 { //-ボタン
            
            numberOnScreen -= 1 //-ボタンを押すごとに１ずつ減算
            label.text = String(numberOnScreen) //ラベルに結果を表示
            
        }
        
        else if sender.tag == 3 { //リセットボタン
            
            numberOnScreen = 0 //リセットボタンを押すと0になる
            label.text = String(numberOnScreen) //ラベルに結果を表示
            
        }
        
        let result = numberOnScreen % 10 //定数resultに「画面の数字 ÷ 10」の計算式を代入
        
        if numberOnScreen >= 10 && result == 1 { //画面の数字が10以上でかつ10で割ったときに1余りが出る時
            
            infoLabel.text = "\(numberOnScreen-1)を超えました" //"(10の倍数の数字)を超えました"と下部ラベルに表示
            
        }
        else if result != 1 { //10で割った時に余りが1ではない時

            infoLabel.text = "" //下部ラベルに何も表示させない

        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

