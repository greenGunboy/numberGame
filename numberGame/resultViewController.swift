//
//  resultViewController.swift
//  numberGame
//
//  Created by TakahashiTsubasa on 2016/05/15.
//  Copyright © 2016年 tsubasatakahashi. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {
    
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    
    var resultArray:[Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        var ud = NSUserDefaults.standardUserDefaults()
        if ud.objectForKey("result") != nil {
            resultArray = ud.objectForKey("result") as! NSArray as! [Int]
            resultArray.sort { $0 < $1 }
            firstLabel.text = "\(resultArray[0])"
            if "\(resultArray[1])" != nil {
                secondLabel.text = "\(resultArray[1])"
            }
            if "\(resultArray[2])" != nil {
                secondLabel.text = "\(resultArray[2])"
            }
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
