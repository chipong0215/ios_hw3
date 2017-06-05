//
//  TableViewCell.swift
//  Airport_List
//
//  Created by Pong on 2017/6/5.
//  Copyright © 2017年 Pong. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
   
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var IATALabel: UILabel!
    @IBOutlet weak var CountryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
