//
//  MyTableCell.swift
//  Gallery
//
//  Created by iFlame on 9/1/17.
//  Copyright © 2017 LCCA. All rights reserved.
//

import UIKit

class MyTableCell: UITableViewCell {

    @IBOutlet weak var ImageTable: UIImageView!
    @IBOutlet weak var LblTable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
