//
//  ViewController.swift
//  Diary
//
//  Created by Noirozr on 15/6/1.
//  Copyright (c) 2015年 Yongjia Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var label = UILabel(frame: CGRectMake(100, 100, 100, 50))
        label.text = "風林火山"
        let font = UIFont(name: "TpldKhangXiDictTrial", size: 20) as UIFont!
        let textAttributes:[NSObject : AnyObject] = [NSFontAttributeName : font]
        
        self.view.addSubview(label)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

