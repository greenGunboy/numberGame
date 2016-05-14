//
//  ViewController.swift
//  numberGame
//
//  Created by TakahashiTsubasa on 2016/05/11.
//  Copyright © 2016年 tsubasatakahashi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var elevenButton: UIButton!
    @IBOutlet weak var twelve: UIButton!
    
    @IBOutlet weak var oneAnimate: SpringButton!
    @IBOutlet weak var twoAnimate: SpringButton!
    @IBOutlet weak var threeAnimate: SpringButton!
    @IBOutlet weak var fourAnimate: SpringButton!
    @IBOutlet weak var fiveAnimate: SpringButton!
    @IBOutlet weak var sixAnimate: SpringButton!
    @IBOutlet weak var sevenAnimate: SpringButton!
    @IBOutlet weak var eightAnimate: SpringButton!
    @IBOutlet weak var nineAnimate: SpringButton!
    @IBOutlet weak var tenAnimate: SpringButton!
    @IBOutlet weak var elevenAnimate: SpringButton!
    @IBOutlet weak var twelveAnimate: SpringButton!
    
    
    var collectButton = 0
    
    var startTime = NSTimeInterval()
    var timer:NSTimer = NSTimer()
    
    var myAudioPlayer : AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let soundFilePath : NSString = NSBundle.mainBundle().pathForResource("sample", ofType: "mp3")!
        let fileURL : NSURL = NSURL(fileURLWithPath: soundFilePath as String)
        //AVAudioPlayerのインスタンス化.
        myAudioPlayer = try! AVAudioPlayer(contentsOfURL: fileURL, fileTypeHint: nil)
        
    }
    
    func onClickMyButton(sender: UIButton) {
        
        //playingプロパティがtrueであれば音源再生中.
        if myAudioPlayer.playing == true {
            
            //myAudioPlayerを一時停止.
            myAudioPlayer.pause()
            sender.setTitle("▶︎", forState: .Normal)
        } else {
            
            //myAudioPlayerの再生.
            myAudioPlayer.play()
            sender.setTitle("■", forState: .Normal)
        }
    }
    
    //音楽再生が成功した時に呼ばれるメソッド.
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        print("Music Finish")
        
        //再度myButtonを"▶︎"に設定.
//        myButton.setTitle("▶︎", forState: .Normal)
    }
    
    //デコード中にエラーが起きた時に呼ばれるメソッド.
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer!, error: NSError!) {
        print("Error")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(
            0.01,                                   // 時間の間隔〔0.01〕
            target: self,                           // タイマーの実際の処理の場所
            selector: Selector("StartTime"),        // メソッド タイマーの実際の処理
            userInfo: nil,
            repeats: true)                          // 繰り返し
        
        // NSDate：日付と時間を管理するクラス
        startTime = NSDate.timeIntervalSinceReferenceDate()
        
        var numberOne = arc4random_uniform(12) + 1
        var numberTwo = arc4random_uniform(12) + 1
        var numberThree = arc4random_uniform(12) + 1
        var numberFour = arc4random_uniform(12) + 1
        var numberFive = arc4random_uniform(12) + 1
        var numberSix = arc4random_uniform(12) + 1
        var numberSeven = arc4random_uniform(12) + 1
        var numberEight = arc4random_uniform(12) + 1
        var numberNine = arc4random_uniform(12) + 1
        var numberTen = arc4random_uniform(12) + 1
        var numberEleven = arc4random_uniform(12) + 1
        var numberTwelve = arc4random_uniform(12) + 1
        
        while numberOne == numberTwo {
            numberTwo = arc4random_uniform(12) + 1
        }
        while numberOne == numberThree
            || numberTwo == numberThree {
            numberThree = arc4random_uniform(12) + 1
        }
        while numberOne == numberFour
            || numberTwo == numberFour
            || numberThree == numberFour {
            numberFour = arc4random_uniform(12) + 1
        }
        while numberOne == numberFive
            || numberTwo == numberFive
            || numberThree == numberFive
            || numberFour == numberFive {
            numberFive = arc4random_uniform(12) + 1
        }
        while numberOne == numberSix
            || numberTwo == numberSix
            || numberThree == numberSix
            || numberFour == numberSix
            || numberFive == numberSix {
            numberSix = arc4random_uniform(12) + 1
        }
        while numberOne == numberSeven
            || numberTwo == numberSeven
            || numberThree == numberSeven
            || numberFour == numberSeven
            || numberFive == numberSeven
            || numberSix == numberSeven {
            numberSeven = arc4random_uniform(12) + 1
        }
        while numberOne == numberEight
            || numberTwo == numberEight
            || numberThree == numberEight
            || numberFour == numberEight
            || numberFive == numberEight
            || numberSix == numberEight
            || numberSeven == numberEight {
            numberEight = arc4random_uniform(12) + 1
        }
        while numberOne == numberNine
            || numberTwo == numberNine
            || numberThree == numberNine
            || numberFour == numberNine
            || numberFive == numberNine
            || numberSix == numberNine
            || numberSeven == numberNine
            || numberEight == numberNine {
            numberNine = arc4random_uniform(12) + 1
        }
        while numberOne == numberTen
            || numberTwo == numberTen
            || numberThree == numberTen
            || numberFour == numberTen
            || numberFive == numberTen
            || numberSix == numberTen
            || numberSeven == numberTen
            || numberEight == numberTen
            || numberNine == numberTen {
            numberTen = arc4random_uniform(12) + 1
        }
        while numberOne == numberEleven
            || numberTwo == numberEleven
            || numberThree == numberEleven
            || numberFour == numberEleven
            || numberFive == numberEleven
            || numberSix == numberEleven
            || numberSeven == numberEleven
            || numberEight == numberEleven
            || numberNine == numberEleven
            || numberTen == numberEleven {
            numberEleven = arc4random_uniform(12) + 1
        }
        
        while numberOne == numberTwelve
            || numberTwo == numberTwelve
            || numberThree == numberTwelve
            || numberFour == numberTwelve
            || numberFive == numberTwelve
            || numberSix == numberTwelve
            || numberSeven == numberTwelve
            || numberEight == numberTwelve
            || numberNine == numberTwelve
            || numberTen == numberTwelve
            || numberEleven == numberTwelve {
            numberTwelve = arc4random_uniform(12) + 1
        }
        
        oneButton.setTitle("\(numberOne)", forState: .Normal)
        twoButton.setTitle("\(numberTwo)", forState: .Normal)
        threeButton.setTitle("\(numberThree)", forState: .Normal)
        fourButton.setTitle("\(numberFour)", forState: .Normal)
        fiveButton.setTitle("\(numberFive)", forState: .Normal)
        sixButton.setTitle("\(numberSix)", forState: .Normal)
        sevenButton.setTitle("\(numberSeven)", forState: .Normal)
        eightButton.setTitle("\(numberEight)", forState: .Normal)
        nineButton.setTitle("\(numberNine)", forState: .Normal)
        tenButton.setTitle("\(numberTen)", forState: .Normal)
        elevenButton.setTitle("\(numberEleven)", forState: .Normal)
        twelve.setTitle("\(numberTwelve)", forState: .Normal)
        
    }
    
    func StartTime() {
        var currentTime = NSDate.timeIntervalSinceReferenceDate()
        
        // 現在の時間を調べるためにスタートします
        var Time: NSTimeInterval = currentTime - startTime
        
        //〔分〕を計算
        // UInt8：8 ビット符号なし整数への変換
        // NSTimeInterval：引数に時間の長さを示す値
        let minutes = UInt8(Time / 60.0)
        Time -= (NSTimeInterval(minutes) * 60)
        
        //〔秒〕を計算
        let seconds = UInt8(Time)
        Time -= NSTimeInterval(seconds)
        
        //〔ミリ秒〕を計算
        let fraction = UInt8(Time * 100)
        
        //〔分〕〔秒〕〔ミリ秒〕を文字列にします
        let timeMinutes = minutes > 9 ? String(minutes):"0" + String(minutes)
        let timeSeconds = seconds > 9 ? String(seconds):"0" + String(seconds)
        let timeFraction = fraction > 9 ? String(fraction):"0" + String(fraction)
        
        // 時間表示用のラベルに〔分〕〔秒〕〔ミリ秒〕を表示
        timeLabel.text = "\(timeMinutes):\(timeSeconds):\(timeFraction)"
    }
    
    @IBAction func pushOne(sender: UIButton) {
        
        if oneButton.currentTitle == "1" && oneButton.currentTitle!  == "\(collectButton + 1)"{
            oneButton.backgroundColor = UIColor.brownColor()
            collectButton = 1
            oneButton.enabled = false
            oneAnimate.animation = "pop"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
        }else if oneButton.currentTitle == "2" && oneButton.currentTitle == "\(collectButton + 1)"{
            oneButton.backgroundColor = UIColor.brownColor()
            collectButton = 2
            oneButton.enabled = false
            oneAnimate.animation = "pop"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
        }else if oneButton.currentTitle == "3" && oneButton.currentTitle == "\(collectButton + 1)"{
            oneButton.backgroundColor = UIColor.brownColor()
            collectButton = 3
            oneButton.enabled = false
            oneAnimate.animation = "pop"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
        }else if oneButton.currentTitle == "4" && oneButton.currentTitle == "\(collectButton + 1)"{
            oneButton.backgroundColor = UIColor.brownColor()
            collectButton = 4
            oneButton.enabled = false
            oneAnimate.animation = "pop"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
        }else if oneButton.currentTitle == "5" && oneButton.currentTitle == "\(collectButton + 1)"{
            oneButton.backgroundColor = UIColor.brownColor()
            collectButton = 5
            oneButton.enabled = false
            oneAnimate.animation = "pop"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
        }else if oneButton.currentTitle == "6" && oneButton.currentTitle == "\(collectButton + 1)"{
            oneButton.backgroundColor = UIColor.brownColor()
            collectButton = 6
            oneButton.enabled = false
            oneAnimate.animation = "pop"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
        }else if oneButton.currentTitle == "7" && oneButton.currentTitle == "\(collectButton + 1)"{
            oneButton.backgroundColor = UIColor.brownColor()
            collectButton = 7
            oneButton.enabled = false
            oneAnimate.animation = "pop"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
        }else if oneButton.currentTitle == "8" && oneButton.currentTitle == "\(collectButton + 1)"{
            oneButton.backgroundColor = UIColor.brownColor()
            collectButton = 8
            oneButton.enabled = false
            oneAnimate.animation = "pop"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
        }else if oneButton.currentTitle == "9" && oneButton.currentTitle == "\(collectButton + 1)"{
            oneButton.backgroundColor = UIColor.brownColor()
            collectButton = 9
            oneButton.enabled = false
            oneAnimate.animation = "pop"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
        }else if oneButton.currentTitle == "10" && oneButton.currentTitle == "\(collectButton + 1)"{
            oneButton.backgroundColor = UIColor.brownColor()
            collectButton = 10
            oneButton.enabled = false
            oneAnimate.animation = "pop"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
        }else if oneButton.currentTitle == "11" && oneButton.currentTitle == "\(collectButton + 1)"{
            oneButton.backgroundColor = UIColor.brownColor()
            collectButton = 11
            oneButton.enabled = false
            oneAnimate.animation = "pop"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
        }else if oneButton.currentTitle == "12" && oneButton.currentTitle == "\(collectButton + 1)"{
            oneButton.backgroundColor = UIColor.brownColor()
            oneButton.enabled = false
            oneAnimate.animation = "pop"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
            timer.invalidate()
            myAudioPlayer.play()
            
            let alertController = UIAlertController(title: "クリア！", message: "\(timeLabel.text)", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            oneButton.backgroundColor = UIColor.redColor()
            oneAnimate.animation = "shake"
            oneAnimate.duration = 0.5
            oneAnimate.animate()
        }
    }
    
    @IBAction func pushTwo(sender: UIButton) {
        
        if twoButton.currentTitle == "1" && twoButton.currentTitle!  == "\(collectButton + 1)"{
            twoButton.backgroundColor = UIColor.brownColor()
            collectButton = 1
            twoButton.enabled = false
            twoAnimate.animation = "pop"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
        }else if twoButton.currentTitle == "2" && twoButton.currentTitle == "\(collectButton + 1)"{
            twoButton.backgroundColor = UIColor.brownColor()
            collectButton = 2
            twoButton.enabled = false
            twoAnimate.animation = "pop"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
        }else if twoButton.currentTitle == "3" && twoButton.currentTitle == "\(collectButton + 1)"{
            twoButton.backgroundColor = UIColor.brownColor()
            collectButton = 3
            twoButton.enabled = false
            twoAnimate.animation = "pop"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
        }else if twoButton.currentTitle == "4" && twoButton.currentTitle == "\(collectButton + 1)"{
            twoButton.backgroundColor = UIColor.brownColor()
            collectButton = 4
            twoButton.enabled = false
            twoAnimate.animation = "pop"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
        }else if twoButton.currentTitle == "5" && twoButton.currentTitle == "\(collectButton + 1)"{
            twoButton.backgroundColor = UIColor.brownColor()
            collectButton = 5
            twoButton.enabled = false
            twoAnimate.animation = "pop"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
        }else if twoButton.currentTitle == "6" && twoButton.currentTitle == "\(collectButton + 1)"{
            twoButton.backgroundColor = UIColor.brownColor()
            collectButton = 6
            twoButton.enabled = false
            twoAnimate.animation = "pop"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
        }else if twoButton.currentTitle == "7" && twoButton.currentTitle == "\(collectButton + 1)"{
            twoButton.backgroundColor = UIColor.brownColor()
            collectButton = 7
            twoButton.enabled = false
            twoAnimate.animation = "pop"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
        }else if twoButton.currentTitle == "8" && twoButton.currentTitle == "\(collectButton + 1)"{
            twoButton.backgroundColor = UIColor.brownColor()
            collectButton = 8
            twoButton.enabled = false
            twoAnimate.animation = "pop"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
        }else if twoButton.currentTitle == "9" && twoButton.currentTitle == "\(collectButton + 1)"{
            twoButton.backgroundColor = UIColor.brownColor()
            collectButton = 9
            twoButton.enabled = false
            twoAnimate.animation = "pop"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
        }else if twoButton.currentTitle == "10" && twoButton.currentTitle == "\(collectButton + 1)"{
            twoButton.backgroundColor = UIColor.brownColor()
            collectButton = 10
            twoButton.enabled = false
            twoAnimate.animation = "pop"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
        }else if twoButton.currentTitle == "11" && twoButton.currentTitle == "\(collectButton + 1)"{
            twoButton.backgroundColor = UIColor.brownColor()
            collectButton = 11
            twoButton.enabled = false
            twoAnimate.animation = "pop"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
        }else if twoButton.currentTitle == "12" && twoButton.currentTitle == "\(collectButton + 1)"{
            twoButton.backgroundColor = UIColor.brownColor()
            twoButton.enabled = false
            twoAnimate.animation = "pop"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
            timer.invalidate()
            myAudioPlayer.play()
            
            let alertController = UIAlertController(title: "クリア！", message: "\(timeLabel.text)", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            twoButton.backgroundColor = UIColor.redColor()
            twoAnimate.animation = "shake"
            twoAnimate.duration = 0.5
            twoAnimate.animate()
        }
    }
    
    @IBAction func pushThree(sender: UIButton) {
        if threeButton.currentTitle == "1" && threeButton.currentTitle!  == "\(collectButton + 1)"{
            threeButton.backgroundColor = UIColor.brownColor()
            collectButton = 1
            threeButton.enabled = false
            threeAnimate.animation = "pop"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
        }else if threeButton.currentTitle == "2" && threeButton.currentTitle == "\(collectButton + 1)"{
            threeButton.backgroundColor = UIColor.brownColor()
            collectButton = 2
            threeButton.enabled = false
            threeAnimate.animation = "pop"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
        }else if threeButton.currentTitle == "3" && threeButton.currentTitle == "\(collectButton + 1)"{
            threeButton.backgroundColor = UIColor.brownColor()
            collectButton = 3
            threeButton.enabled = false
            threeAnimate.animation = "pop"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
        }else if threeButton.currentTitle == "4" && threeButton.currentTitle == "\(collectButton + 1)"{
            threeButton.backgroundColor = UIColor.brownColor()
            collectButton = 4
            threeButton.enabled = false
            threeAnimate.animation = "pop"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
        }else if threeButton.currentTitle == "5" && threeButton.currentTitle == "\(collectButton + 1)"{
            threeButton.backgroundColor = UIColor.brownColor()
            collectButton = 5
            threeButton.enabled = false
            threeAnimate.animation = "pop"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
        }else if threeButton.currentTitle == "6" && threeButton.currentTitle == "\(collectButton + 1)"{
            threeButton.backgroundColor = UIColor.brownColor()
            collectButton = 6
            threeButton.enabled = false
            threeAnimate.animation = "pop"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
        }else if threeButton.currentTitle == "7" && threeButton.currentTitle == "\(collectButton + 1)"{
            threeButton.backgroundColor = UIColor.brownColor()
            collectButton = 7
            threeButton.enabled = false
            threeAnimate.animation = "pop"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
        }else if threeButton.currentTitle == "8" && threeButton.currentTitle == "\(collectButton + 1)"{
            threeButton.backgroundColor = UIColor.brownColor()
            collectButton = 8
            threeButton.enabled = false
            threeAnimate.animation = "pop"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
        }else if threeButton.currentTitle == "9" && threeButton.currentTitle == "\(collectButton + 1)"{
            threeButton.backgroundColor = UIColor.brownColor()
            collectButton = 9
            threeButton.enabled = false
            threeAnimate.animation = "pop"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
        }else if threeButton.currentTitle == "10" && threeButton.currentTitle == "\(collectButton + 1)"{
            threeButton.backgroundColor = UIColor.brownColor()
            collectButton = 10
            threeButton.enabled = false
            threeAnimate.animation = "pop"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
        }else if threeButton.currentTitle == "11" && threeButton.currentTitle == "\(collectButton + 1)"{
            threeButton.backgroundColor = UIColor.brownColor()
            collectButton = 11
            threeButton.enabled = false
            threeAnimate.animation = "pop"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
        }else if threeButton.currentTitle == "12" && threeButton.currentTitle == "\(collectButton + 1)"{
            threeButton.backgroundColor = UIColor.brownColor()
            oneButton.enabled = false
            threeAnimate.animation = "pop"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
            timer.invalidate()
            myAudioPlayer.play()
            
            let alertController = UIAlertController(title: "クリア！", message: "\(timeLabel.text)", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            threeButton.backgroundColor = UIColor.redColor()
            threeAnimate.animation = "shake"
            threeAnimate.duration = 0.5
            threeAnimate.animate()
        }

    }
    
    @IBAction func pushFour(sender: UIButton) {
        if fourButton.currentTitle == "1" && fourButton.currentTitle!  == "\(collectButton + 1)"{
            fourButton.backgroundColor = UIColor.brownColor()
            collectButton = 1
            fourButton.enabled = false
            fourAnimate.animation = "pop"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
        }else if fourButton.currentTitle == "2" && fourButton.currentTitle == "\(collectButton + 1)"{
            fourButton.backgroundColor = UIColor.brownColor()
            collectButton = 2
            fourButton.enabled = false
            fourAnimate.animation = "pop"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
        }else if fourButton.currentTitle == "3" && fourButton.currentTitle == "\(collectButton + 1)"{
            fourButton.backgroundColor = UIColor.brownColor()
            collectButton = 3
            fourButton.enabled = false
            fourAnimate.animation = "pop"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
        }else if fourButton.currentTitle == "4" && fourButton.currentTitle == "\(collectButton + 1)"{
            fourButton.backgroundColor = UIColor.brownColor()
            collectButton = 4
            fourButton.enabled = false
            fourAnimate.animation = "pop"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
        }else if fourButton.currentTitle == "5" && fourButton.currentTitle == "\(collectButton + 1)"{
            fourButton.backgroundColor = UIColor.brownColor()
            collectButton = 5
            fourButton.enabled = false
            fourAnimate.animation = "pop"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
        }else if fourButton.currentTitle == "6" && fourButton.currentTitle == "\(collectButton + 1)"{
            fourButton.backgroundColor = UIColor.brownColor()
            collectButton = 6
            fourButton.enabled = false
            fourAnimate.animation = "pop"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
        }else if fourButton.currentTitle == "7" && fourButton.currentTitle == "\(collectButton + 1)"{
            fourButton.backgroundColor = UIColor.brownColor()
            collectButton = 7
            fourButton.enabled = false
            fourAnimate.animation = "pop"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
        }else if fourButton.currentTitle == "8" && fourButton.currentTitle == "\(collectButton + 1)"{
            fourButton.backgroundColor = UIColor.brownColor()
            collectButton = 8
            fourButton.enabled = false
            fourAnimate.animation = "pop"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
        }else if fourButton.currentTitle == "9" && fourButton.currentTitle == "\(collectButton + 1)"{
            fourButton.backgroundColor = UIColor.brownColor()
            collectButton = 9
            fourButton.enabled = false
            fourAnimate.animation = "pop"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
        }else if fourButton.currentTitle == "10" && fourButton.currentTitle == "\(collectButton + 1)"{
            fourButton.backgroundColor = UIColor.brownColor()
            collectButton = 10
            fourButton.enabled = false
            fourAnimate.animation = "pop"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
        }else if fourButton.currentTitle == "11" && fourButton.currentTitle == "\(collectButton + 1)"{
            fourButton.backgroundColor = UIColor.brownColor()
            collectButton = 11
            fourButton.enabled = false
            fourAnimate.animation = "pop"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
        }else if fourButton.currentTitle == "12" && fourButton.currentTitle == "\(collectButton + 1)"{
            fourButton.backgroundColor = UIColor.brownColor()
            fourButton.enabled = false
            fourAnimate.animation = "pop"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
            timer.invalidate()
            myAudioPlayer.play()
            
            let alertController = UIAlertController(title: "クリア！", message: "\(timeLabel.text)", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            fourButton.backgroundColor = UIColor.redColor()
            fourAnimate.animation = "shake"
            fourAnimate.duration = 0.5
            fourAnimate.animate()
        }

    }
    
    @IBAction func pushFive(sender: UIButton) {
        if fiveButton.currentTitle == "1" && fiveButton.currentTitle!  == "\(collectButton + 1)"{
            fiveButton.backgroundColor = UIColor.brownColor()
            collectButton = 1
            fiveButton.enabled = false
            fiveAnimate.animation = "pop"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
        }else if fiveButton.currentTitle == "2" && fiveButton.currentTitle == "\(collectButton + 1)"{
            fiveButton.backgroundColor = UIColor.brownColor()
            collectButton = 2
            fiveButton.enabled = false
            fiveAnimate.animation = "pop"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
        }else if fiveButton.currentTitle == "3" && fiveButton.currentTitle == "\(collectButton + 1)"{
            fiveButton.backgroundColor = UIColor.brownColor()
            collectButton = 3
            fiveButton.enabled = false
            fiveAnimate.animation = "pop"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
        }else if fiveButton.currentTitle == "4" && fiveButton.currentTitle == "\(collectButton + 1)"{
            fiveButton.backgroundColor = UIColor.brownColor()
            collectButton = 4
            fiveButton.enabled = false
            fiveAnimate.animation = "pop"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
        }else if fiveButton.currentTitle == "5" && fiveButton.currentTitle == "\(collectButton + 1)"{
            fiveButton.backgroundColor = UIColor.brownColor()
            collectButton = 5
            fiveButton.enabled = false
            fiveAnimate.animation = "pop"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
        }else if fiveButton.currentTitle == "6" && fiveButton.currentTitle == "\(collectButton + 1)"{
            fiveButton.backgroundColor = UIColor.brownColor()
            collectButton = 6
            fiveButton.enabled = false
            fiveAnimate.animation = "pop"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
        }else if fiveButton.currentTitle == "7" && fiveButton.currentTitle == "\(collectButton + 1)"{
            fiveButton.backgroundColor = UIColor.brownColor()
            collectButton = 7
            fiveButton.enabled = false
            fiveAnimate.animation = "pop"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
        }else if fiveButton.currentTitle == "8" && fiveButton.currentTitle == "\(collectButton + 1)"{
            fiveButton.backgroundColor = UIColor.brownColor()
            collectButton = 8
            fiveButton.enabled = false
            fiveAnimate.animation = "pop"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
        }else if fiveButton.currentTitle == "9" && fiveButton.currentTitle == "\(collectButton + 1)"{
            fiveButton.backgroundColor = UIColor.brownColor()
            collectButton = 9
            fiveButton.enabled = false
            fiveAnimate.animation = "pop"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
        }else if fiveButton.currentTitle == "10" && fiveButton.currentTitle == "\(collectButton + 1)"{
            fiveButton.backgroundColor = UIColor.brownColor()
            collectButton = 10
            fiveButton.enabled = false
            fiveAnimate.animation = "pop"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
        }else if fiveButton.currentTitle == "11" && fiveButton.currentTitle == "\(collectButton + 1)"{
            fiveButton.backgroundColor = UIColor.brownColor()
            collectButton = 11
            fiveButton.enabled = false
            fiveAnimate.animation = "pop"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
        }else if fiveButton.currentTitle == "12" && fiveButton.currentTitle == "\(collectButton + 1)"{
            fiveButton.backgroundColor = UIColor.brownColor()
            fiveButton.enabled = false
            fiveAnimate.animation = "pop"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
            timer.invalidate()
            myAudioPlayer.play()
            
            let alertController = UIAlertController(title: "クリア！", message: "\(timeLabel.text)", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            fiveButton.backgroundColor = UIColor.redColor()
            fiveAnimate.animation = "shake"
            fiveAnimate.duration = 0.5
            fiveAnimate.animate()
        }

    }
    
    @IBAction func pushSix(sender: UIButton) {
        if sixButton.currentTitle == "1" && sixButton.currentTitle!  == "\(collectButton + 1)"{
            sixButton.backgroundColor = UIColor.brownColor()
            collectButton = 1
            sixButton.enabled = false
            sixAnimate.animation = "pop"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
        }else if sixButton.currentTitle == "2" && sixButton.currentTitle == "\(collectButton + 1)"{
            sixButton.backgroundColor = UIColor.brownColor()
            collectButton = 2
            sixButton.enabled = false
            sixAnimate.animation = "pop"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
        }else if sixButton.currentTitle == "3" && sixButton.currentTitle == "\(collectButton + 1)"{
            sixButton.backgroundColor = UIColor.brownColor()
            collectButton = 3
            sixButton.enabled = false
            sixAnimate.animation = "pop"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
        }else if sixButton.currentTitle == "4" && sixButton.currentTitle == "\(collectButton + 1)"{
            sixButton.backgroundColor = UIColor.brownColor()
            collectButton = 4
            sixButton.enabled = false
            sixAnimate.animation = "pop"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
        }else if sixButton.currentTitle == "5" && sixButton.currentTitle == "\(collectButton + 1)"{
            sixButton.backgroundColor = UIColor.brownColor()
            collectButton = 5
            sixButton.enabled = false
            sixAnimate.animation = "pop"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
        }else if sixButton.currentTitle == "6" && sixButton.currentTitle == "\(collectButton + 1)"{
            sixButton.backgroundColor = UIColor.brownColor()
            collectButton = 6
            sixButton.enabled = false
            sixAnimate.animation = "pop"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
        }else if sixButton.currentTitle == "7" && sixButton.currentTitle == "\(collectButton + 1)"{
            sixButton.backgroundColor = UIColor.brownColor()
            collectButton = 7
            sixButton.enabled = false
            sixAnimate.animation = "pop"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
        }else if sixButton.currentTitle == "8" && sixButton.currentTitle == "\(collectButton + 1)"{
            sixButton.backgroundColor = UIColor.brownColor()
            collectButton = 8
            sixButton.enabled = false
            sixAnimate.animation = "pop"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
        }else if sixButton.currentTitle == "9" && sixButton.currentTitle == "\(collectButton + 1)"{
            sixButton.backgroundColor = UIColor.brownColor()
            collectButton = 9
            sixButton.enabled = false
            sixAnimate.animation = "pop"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
        }else if sixButton.currentTitle == "10" && sixButton.currentTitle == "\(collectButton + 1)"{
            sixButton.backgroundColor = UIColor.brownColor()
            collectButton = 10
            sixButton.enabled = false
            sixAnimate.animation = "pop"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
        }else if sixButton.currentTitle == "11" && sixButton.currentTitle == "\(collectButton + 1)"{
            sixButton.backgroundColor = UIColor.brownColor()
            collectButton = 11
            sixButton.enabled = false
            sixAnimate.animation = "pop"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
        }else if sixButton.currentTitle == "12" && sixButton.currentTitle == "\(collectButton + 1)"{
            sixButton.backgroundColor = UIColor.brownColor()
            sixButton.enabled = false
            sixAnimate.animation = "pop"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
            timer.invalidate()
            myAudioPlayer.play()
            
            let alertController = UIAlertController(title: "クリア！", message: "\(timeLabel.text)", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            sixButton.backgroundColor = UIColor.redColor()
            sixAnimate.animation = "shake"
            sixAnimate.duration = 0.5
            sixAnimate.animate()
        }

    }
    
    @IBAction func pushSeven(sender: UIButton) {
        if sevenButton.currentTitle == "1" && sevenButton.currentTitle!  == "\(collectButton + 1)"{
            sevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 1
            sevenButton.enabled = false
            sevenAnimate.animation = "pop"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
        }else if sevenButton.currentTitle == "2" && sevenButton.currentTitle == "\(collectButton + 1)"{
            sevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 2
            sevenButton.enabled = false
            sevenAnimate.animation = "pop"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
        }else if sevenButton.currentTitle == "3" && sevenButton.currentTitle == "\(collectButton + 1)"{
            sevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 3
            sevenButton.enabled = false
            sevenAnimate.animation = "pop"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
        }else if sevenButton.currentTitle == "4" && sevenButton.currentTitle == "\(collectButton + 1)"{
            sevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 4
            sevenButton.enabled = false
            sevenAnimate.animation = "pop"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
        }else if sevenButton.currentTitle == "5" && sevenButton.currentTitle == "\(collectButton + 1)"{
            sevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 5
            sevenButton.enabled = false
            sevenAnimate.animation = "pop"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
        }else if sevenButton.currentTitle == "6" && sevenButton.currentTitle == "\(collectButton + 1)"{
            sevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 6
            sevenButton.enabled = false
            sevenAnimate.animation = "pop"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
        }else if sevenButton.currentTitle == "7" && sevenButton.currentTitle == "\(collectButton + 1)"{
            sevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 7
            sevenButton.enabled = false
            sevenAnimate.animation = "pop"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
        }else if sevenButton.currentTitle == "8" && sevenButton.currentTitle == "\(collectButton + 1)"{
            sevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 8
            sevenButton.enabled = false
            sevenAnimate.animation = "pop"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
        }else if sevenButton.currentTitle == "9" && sevenButton.currentTitle == "\(collectButton + 1)"{
            sevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 9
            sevenButton.enabled = false
            sevenAnimate.animation = "pop"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
        }else if sevenButton.currentTitle == "10" && sevenButton.currentTitle == "\(collectButton + 1)"{
            sevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 10
            sevenButton.enabled = false
            sevenAnimate.animation = "pop"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
        }else if sevenButton.currentTitle == "11" && sevenButton.currentTitle == "\(collectButton + 1)"{
            sevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 11
            sevenButton.enabled = false
            sevenAnimate.animation = "pop"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
        }else if oneButton.currentTitle == "12" && sevenButton.currentTitle == "\(collectButton + 1)"{
            sevenButton.backgroundColor = UIColor.brownColor()
            sevenButton.enabled = false
            sevenAnimate.animation = "pop"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
            timer.invalidate()
            myAudioPlayer.play()
            
            let alertController = UIAlertController(title: "クリア！", message: "\(timeLabel.text)", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            sevenButton.backgroundColor = UIColor.redColor()
            sevenAnimate.animation = "shake"
            sevenAnimate.duration = 0.5
            sevenAnimate.animate()
        }

    }
    
    @IBAction func pushEight(sender: UIButton) {
        if eightButton.currentTitle == "1" && eightButton.currentTitle!  == "\(collectButton + 1)"{
            eightButton.backgroundColor = UIColor.brownColor()
            collectButton = 1
            eightButton.enabled = false
            eightAnimate.animation = "pop"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
        }else if eightButton.currentTitle == "2" && eightButton.currentTitle == "\(collectButton + 1)"{
            eightButton.backgroundColor = UIColor.brownColor()
            collectButton = 2
            eightButton.enabled = false
            eightAnimate.animation = "pop"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
        }else if eightButton.currentTitle == "3" && eightButton.currentTitle == "\(collectButton + 1)"{
            eightButton.backgroundColor = UIColor.brownColor()
            collectButton = 3
            eightButton.enabled = false
            eightAnimate.animation = "pop"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
        }else if eightButton.currentTitle == "4" && eightButton.currentTitle == "\(collectButton + 1)"{
            eightButton.backgroundColor = UIColor.brownColor()
            collectButton = 4
            eightButton.enabled = false
            eightAnimate.animation = "pop"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
        }else if eightButton.currentTitle == "5" && eightButton.currentTitle == "\(collectButton + 1)"{
            eightButton.backgroundColor = UIColor.brownColor()
            collectButton = 5
            eightButton.enabled = false
            eightAnimate.animation = "pop"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
        }else if eightButton.currentTitle == "6" && eightButton.currentTitle == "\(collectButton + 1)"{
            eightButton.backgroundColor = UIColor.brownColor()
            collectButton = 6
            eightButton.enabled = false
            eightAnimate.animation = "pop"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
        }else if eightButton.currentTitle == "7" && eightButton.currentTitle == "\(collectButton + 1)"{
            eightButton.backgroundColor = UIColor.brownColor()
            collectButton = 7
            eightButton.enabled = false
            eightAnimate.animation = "pop"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
        }else if eightButton.currentTitle == "8" && eightButton.currentTitle == "\(collectButton + 1)"{
            eightButton.backgroundColor = UIColor.brownColor()
            collectButton = 8
            eightButton.enabled = false
            eightAnimate.animation = "pop"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
        }else if eightButton.currentTitle == "9" && eightButton.currentTitle == "\(collectButton + 1)"{
            eightButton.backgroundColor = UIColor.brownColor()
            collectButton = 9
            eightButton.enabled = false
            eightAnimate.animation = "pop"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
        }else if eightButton.currentTitle == "10" && eightButton.currentTitle == "\(collectButton + 1)"{
            eightButton.backgroundColor = UIColor.brownColor()
            collectButton = 10
            eightButton.enabled = false
            eightAnimate.animation = "pop"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
        }else if eightButton.currentTitle == "11" && eightButton.currentTitle == "\(collectButton + 1)"{
            eightButton.backgroundColor = UIColor.brownColor()
            collectButton = 11
            eightButton.enabled = false
            eightAnimate.animation = "pop"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
        }else if eightButton.currentTitle == "12" && eightButton.currentTitle == "\(collectButton + 1)"{
            eightButton.backgroundColor = UIColor.brownColor()
            eightButton.enabled = false
            eightAnimate.animation = "pop"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
            timer.invalidate()
            myAudioPlayer.play()
            
            let alertController = UIAlertController(title: "クリア！", message: "\(timeLabel.text)", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            eightButton.backgroundColor = UIColor.redColor()
            eightAnimate.animation = "shake"
            eightAnimate.duration = 0.5
            eightAnimate.animate()
        }

    }
    
    @IBAction func pushNine(sender: UIButton) {
        if nineButton.currentTitle == "1" && nineButton.currentTitle!  == "\(collectButton + 1)"{
            nineButton.backgroundColor = UIColor.brownColor()
            collectButton = 1
            nineButton.enabled = false
            nineAnimate.animation = "pop"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
        }else if nineButton.currentTitle == "2" && nineButton.currentTitle == "\(collectButton + 1)"{
            nineButton.backgroundColor = UIColor.brownColor()
            collectButton = 2
            nineButton.enabled = false
            nineAnimate.animation = "pop"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
        }else if nineButton.currentTitle == "3" && nineButton.currentTitle == "\(collectButton + 1)"{
            nineButton.backgroundColor = UIColor.brownColor()
            collectButton = 3
            nineButton.enabled = false
            nineAnimate.animation = "pop"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
        }else if nineButton.currentTitle == "4" && nineButton.currentTitle == "\(collectButton + 1)"{
            nineButton.backgroundColor = UIColor.brownColor()
            collectButton = 4
            nineButton.enabled = false
            nineAnimate.animation = "pop"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
        }else if nineButton.currentTitle == "5" && nineButton.currentTitle == "\(collectButton + 1)"{
            nineButton.backgroundColor = UIColor.brownColor()
            collectButton = 5
            nineButton.enabled = false
            nineAnimate.animation = "pop"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
        }else if nineButton.currentTitle == "6" && nineButton.currentTitle == "\(collectButton + 1)"{
            nineButton.backgroundColor = UIColor.brownColor()
            collectButton = 6
            nineButton.enabled = false
            nineAnimate.animation = "pop"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
        }else if nineButton.currentTitle == "7" && nineButton.currentTitle == "\(collectButton + 1)"{
            nineButton.backgroundColor = UIColor.brownColor()
            collectButton = 7
            nineButton.enabled = false
            nineAnimate.animation = "pop"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
        }else if nineButton.currentTitle == "8" && nineButton.currentTitle == "\(collectButton + 1)"{
            nineButton.backgroundColor = UIColor.brownColor()
            collectButton = 8
            nineButton.enabled = false
            nineAnimate.animation = "pop"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
        }else if nineButton.currentTitle == "9" && nineButton.currentTitle == "\(collectButton + 1)"{
            nineButton.backgroundColor = UIColor.brownColor()
            collectButton = 9
            nineButton.enabled = false
            nineAnimate.animation = "pop"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
        }else if nineButton.currentTitle == "10" && nineButton.currentTitle == "\(collectButton + 1)"{
            nineButton.backgroundColor = UIColor.brownColor()
            collectButton = 10
            nineButton.enabled = false
            nineAnimate.animation = "pop"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
        }else if nineButton.currentTitle == "11" && nineButton.currentTitle == "\(collectButton + 1)"{
            nineButton.backgroundColor = UIColor.brownColor()
            collectButton = 11
            nineButton.enabled = false
            nineAnimate.animation = "pop"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
        }else if nineButton.currentTitle == "12" && nineButton.currentTitle == "\(collectButton + 1)"{
            nineButton.backgroundColor = UIColor.brownColor()
            nineButton.enabled = false
            nineAnimate.animation = "pop"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
            timer.invalidate()
            myAudioPlayer.play()
            
            let alertController = UIAlertController(title: "クリア！", message: "\(timeLabel.text)", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            nineButton.backgroundColor = UIColor.redColor()
            nineAnimate.animation = "shake"
            nineAnimate.duration = 0.5
            nineAnimate.animate()
        }
    }
    
    @IBAction func pushTen(sender: UIButton) {
        if tenButton.currentTitle == "1" && tenButton.currentTitle!  == "\(collectButton + 1)"{
            tenButton.backgroundColor = UIColor.brownColor()
            collectButton = 1
            tenButton.enabled = false
            tenAnimate.animation = "pop"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
        }else if tenButton.currentTitle == "2" && tenButton.currentTitle == "\(collectButton + 1)"{
            tenButton.backgroundColor = UIColor.brownColor()
            collectButton = 2
            tenButton.enabled = false
            tenAnimate.animation = "pop"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
        }else if tenButton.currentTitle == "3" && tenButton.currentTitle == "\(collectButton + 1)"{
            tenButton.backgroundColor = UIColor.brownColor()
            collectButton = 3
            tenButton.enabled = false
            tenAnimate.animation = "pop"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
        }else if tenButton.currentTitle == "4" && tenButton.currentTitle == "\(collectButton + 1)"{
            tenButton.backgroundColor = UIColor.brownColor()
            collectButton = 4
            tenButton.enabled = false
            tenAnimate.animation = "pop"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
        }else if tenButton.currentTitle == "5" && tenButton.currentTitle == "\(collectButton + 1)"{
            tenButton.backgroundColor = UIColor.brownColor()
            collectButton = 5
            tenButton.enabled = false
            tenAnimate.animation = "pop"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
        }else if tenButton.currentTitle == "6" && tenButton.currentTitle == "\(collectButton + 1)"{
            tenButton.backgroundColor = UIColor.brownColor()
            collectButton = 6
            tenButton.enabled = false
            tenAnimate.animation = "pop"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
        }else if tenButton.currentTitle == "7" && tenButton.currentTitle == "\(collectButton + 1)"{
            tenButton.backgroundColor = UIColor.brownColor()
            collectButton = 7
            tenButton.enabled = false
            tenAnimate.animation = "pop"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
        }else if tenButton.currentTitle == "8" && tenButton.currentTitle == "\(collectButton + 1)"{
            tenButton.backgroundColor = UIColor.brownColor()
            collectButton = 8
            tenButton.enabled = false
            tenAnimate.animation = "pop"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
        }else if tenButton.currentTitle == "9" && tenButton.currentTitle == "\(collectButton + 1)"{
            tenButton.backgroundColor = UIColor.brownColor()
            collectButton = 9
            tenButton.enabled = false
            tenAnimate.animation = "pop"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
        }else if tenButton.currentTitle == "10" && tenButton.currentTitle == "\(collectButton + 1)"{
            tenButton.backgroundColor = UIColor.brownColor()
            collectButton = 10
            tenButton.enabled = false
            tenAnimate.animation = "pop"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
        }else if tenButton.currentTitle == "11" && tenButton.currentTitle == "\(collectButton + 1)"{
            tenButton.backgroundColor = UIColor.brownColor()
            collectButton = 11
            tenButton.enabled = false
            tenAnimate.animation = "pop"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
        }else if tenButton.currentTitle == "12" && tenButton.currentTitle == "\(collectButton + 1)"{
            tenButton.backgroundColor = UIColor.brownColor()
            tenButton.enabled = false
            tenAnimate.animation = "pop"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
            timer.invalidate()
            myAudioPlayer.play()
            
            let alertController = UIAlertController(title: "クリア！", message: "\(timeLabel.text)", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            tenButton.backgroundColor = UIColor.redColor()
            tenAnimate.animation = "shake"
            tenAnimate.duration = 0.5
            tenAnimate.animate()
        }

    }
    
    @IBAction func pushEleven(sender: UIButton) {
        if elevenButton.currentTitle == "1" && elevenButton.currentTitle!  == "\(collectButton + 1)"{
            elevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 1
            elevenButton.enabled = false
            elevenAnimate.animation = "pop"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
        }else if elevenButton.currentTitle == "2" && elevenButton.currentTitle == "\(collectButton + 1)"{
            elevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 2
            elevenButton.enabled = false
            elevenAnimate.animation = "pop"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
        }else if elevenButton.currentTitle == "3" && elevenButton.currentTitle == "\(collectButton + 1)"{
            elevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 3
            elevenButton.enabled = false
            elevenAnimate.animation = "pop"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
        }else if elevenButton.currentTitle == "4" && elevenButton.currentTitle == "\(collectButton + 1)"{
            elevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 4
            elevenButton.enabled = false
            elevenAnimate.animation = "pop"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
        }else if elevenButton.currentTitle == "5" && elevenButton.currentTitle == "\(collectButton + 1)"{
            elevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 5
            elevenButton.enabled = false
            elevenAnimate.animation = "pop"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
        }else if elevenButton.currentTitle == "6" && elevenButton.currentTitle == "\(collectButton + 1)"{
            elevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 6
            elevenButton.enabled = false
            elevenAnimate.animation = "pop"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
        }else if elevenButton.currentTitle == "7" && elevenButton.currentTitle == "\(collectButton + 1)"{
            elevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 7
            elevenButton.enabled = false
            elevenAnimate.animation = "pop"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
        }else if elevenButton.currentTitle == "8" && elevenButton.currentTitle == "\(collectButton + 1)"{
            elevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 8
            elevenButton.enabled = false
            elevenAnimate.animation = "pop"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
        }else if elevenButton.currentTitle == "9" && elevenButton.currentTitle == "\(collectButton + 1)"{
            elevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 9
            elevenButton.enabled = false
            elevenAnimate.animation = "pop"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
        }else if elevenButton.currentTitle == "10" && elevenButton.currentTitle == "\(collectButton + 1)"{
            elevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 10
            elevenButton.enabled = false
            elevenAnimate.animation = "pop"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
        }else if elevenButton.currentTitle == "11" && elevenButton.currentTitle == "\(collectButton + 1)"{
            elevenButton.backgroundColor = UIColor.brownColor()
            collectButton = 11
            elevenButton.enabled = false
            elevenAnimate.animation = "pop"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
        }else if elevenButton.currentTitle == "12" && elevenButton.currentTitle == "\(collectButton + 1)"{
            elevenButton.backgroundColor = UIColor.brownColor()
            elevenButton.enabled = false
            elevenAnimate.animation = "pop"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
            timer.invalidate()
            myAudioPlayer.play()
            
            let alertController = UIAlertController(title: "クリア！", message: "\(timeLabel.text)", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            elevenButton.backgroundColor = UIColor.redColor()
            elevenAnimate.animation = "shake"
            elevenAnimate.duration = 0.5
            elevenAnimate.animate()
        }

    }
    
    @IBAction func pushTwelve(sender: UIButton) {
        if twelve.currentTitle == "1" && twelve.currentTitle!  == "\(collectButton + 1)"{
            twelve.backgroundColor = UIColor.brownColor()
            collectButton = 1
            twelve.enabled = false
            twelveAnimate.animation = "pop"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
        }else if twelve.currentTitle == "2" && twelve.currentTitle == "\(collectButton + 1)"{
            twelve.backgroundColor = UIColor.brownColor()
            collectButton = 2
            twelve.enabled = false
            twelveAnimate.animation = "pop"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
        }else if twelve.currentTitle == "3" && twelve.currentTitle == "\(collectButton + 1)"{
            twelve.backgroundColor = UIColor.brownColor()
            collectButton = 3
            twelve.enabled = false
            twelveAnimate.animation = "pop"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
        }else if twelve.currentTitle == "4" && twelve.currentTitle == "\(collectButton + 1)"{
            twelve.backgroundColor = UIColor.brownColor()
            collectButton = 4
            twelve.enabled = false
            twelveAnimate.animation = "pop"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
        }else if twelve.currentTitle == "5" && twelve.currentTitle == "\(collectButton + 1)"{
            twelve.backgroundColor = UIColor.brownColor()
            collectButton = 5
            twelve.enabled = false
            twelveAnimate.animation = "pop"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
        }else if twelve.currentTitle == "6" && twelve.currentTitle == "\(collectButton + 1)"{
            twelve.backgroundColor = UIColor.brownColor()
            collectButton = 6
            twelve.enabled = false
            twelveAnimate.animation = "pop"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
        }else if twelve.currentTitle == "7" && twelve.currentTitle == "\(collectButton + 1)"{
            twelve.backgroundColor = UIColor.brownColor()
            collectButton = 7
            twelve.enabled = false
            twelveAnimate.animation = "pop"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
        }else if twelve.currentTitle == "8" && twelve.currentTitle == "\(collectButton + 1)"{
            twelve.backgroundColor = UIColor.brownColor()
            collectButton = 8
            twelve.enabled = false
            twelveAnimate.animation = "pop"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
        }else if twelve.currentTitle == "9" && twelve.currentTitle == "\(collectButton + 1)"{
            twelve.backgroundColor = UIColor.brownColor()
            collectButton = 9
            twelve.enabled = false
            twelveAnimate.animation = "pop"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
        }else if twelve.currentTitle == "10" && twelve.currentTitle == "\(collectButton + 1)"{
            twelve.backgroundColor = UIColor.brownColor()
            collectButton = 10
            twelve.enabled = false
            twelveAnimate.animation = "pop"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
        }else if twelve.currentTitle == "11" && twelve.currentTitle == "\(collectButton + 1)"{
            twelve.backgroundColor = UIColor.brownColor()
            collectButton = 11
            twelve.enabled = false
            twelveAnimate.animation = "pop"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
        }else if twelve.currentTitle == "12" && twelve.currentTitle == "\(collectButton + 1)"{
            twelve.backgroundColor = UIColor.brownColor()
            twelve.enabled = false
            twelveAnimate.animation = "pop"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
            timer.invalidate()
            myAudioPlayer.play()
            
            let alertController = UIAlertController(title: "クリア！", message: "\(timeLabel.text)", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            twelve.backgroundColor = UIColor.redColor()
            twelveAnimate.animation = "shake"
            twelveAnimate.duration = 0.5
            twelveAnimate.animate()
        }

    }
    
}



