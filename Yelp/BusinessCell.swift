//
//  BusinessCell.swift
//  Yelp
//
//  Created by Ajeya Rengarajan on 2/12/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var cuisineLabel: UILabel!
    @IBOutlet weak var businessImageView: UIImageView!
    
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            starImageView.setImageWith(business.ratingImageURL!)
            distanceLabel.text = business.distance
            reviewCountLabel.text = "\(business.reviewCount!) Reviews"
            addressLabel.text = business.address
            cuisineLabel.text = business.categories
            businessImageView.setImageWith(business.imageURL!)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        businessImageView.layer.cornerRadius = 3
        businessImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
