//
//  ViewController.swift
//  SampleApp
//
//  Created by KumagaiNaoki on 2016/06/06.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        let tableView = TableView(frame: frame, style: .Plain)
        self.view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

