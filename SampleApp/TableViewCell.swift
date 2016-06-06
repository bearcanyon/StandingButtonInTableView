//
//  TableViewCell.swift
//  SampleApp
//
//  Created by KumagaiNaoki on 2016/06/06.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
