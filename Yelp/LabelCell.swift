//
//  NoResultsCell.swift
//  Yelp
//
//  Created by Pavani Vellal on 4/9/17.
//  Copyright © 2017 Pavani Vellal. All rights reserved.
//

import UIKit

class LabelCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
