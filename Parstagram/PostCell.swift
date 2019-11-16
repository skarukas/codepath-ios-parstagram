//
//  FeedCellTableViewCell.swift
//  Parstagram
//
//  Created by Stephen Karukas on 11/15/19.
//  Copyright © 2019 Stephen Karukas. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell { 
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    
    @IBOutlet weak var photoImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
