//
//  TableView.swift
//  SampleApp
//
//  Created by KumagaiNaoki on 2016/06/06.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit

class TableView: UITableView, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {
    
    let view = UIButton()

    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        
        self.delegate = self
        self.dataSource = self
        
        self.registerNib(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        self.estimatedRowHeight = 200
        self.rowHeight = UITableViewAutomaticDimension
        
        view.frame.size = CGSize(width: 50, height: 50)
        view.center.y = self.frame.height - 100
        view.center.x = self.center.x
        view.backgroundColor = UIColor.blueColor()
        view.addTarget(self, action: #selector(TableView.tappedButton(_:)), forControlEvents: .TouchUpInside)
        self.addSubview(view)
    }
    
    func tappedButton(sender: UIButton) {
        print("\(#function),\(#line)")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewCell", forIndexPath: indexPath) as! TableViewCell
        cell.myLabel.text = "hoge"
        return cell
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("\(#function),\(#line)")
        print(scrollView)
        print(scrollView.contentOffset.x)
        print(scrollView.contentOffset.y)
        view.center.y = self.frame.height - 100 + scrollView.contentOffset.y
    }
    
}
