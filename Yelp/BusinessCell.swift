//
//  BusinessCell.swift
//  Yelp
//
//  Created by Pavani Vellal on 4/7/17.
//  Copyright © 2017 Pavani Vellal. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    @IBOutlet weak var businessImage: UIImageView!
    @IBOutlet weak var ratingsImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numReviewsLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            if business.imageURL != nil {
                businessImage.setImageWith(business.imageURL!)
            } else {
                businessImage.image = #imageLiteral(resourceName: "yelp_icon")
            }
            ratingsImage.setImageWith(business.ratingImageURL!)
            numReviewsLabel.text = "\(business.reviewCount!) reviews"
            distanceLabel.text = business.distance!
            addressLabel.text = business.address
            categoriesLabel.text = business.categories
            
            var rand_no = arc4random_uniform(3) + 1
            for index in 1...rand_no {
                if(index == 1)
                {
                    priceLabel.text = "$"
                }
                else
                {
                    priceLabel.text = priceLabel.text! + "$"
                }
            }
            
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        businessImage.layer.cornerRadius = 5
        businessImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
