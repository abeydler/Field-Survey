//
//  FieldSurveyTableViewCell.swift
//  Field Survey
//
//  Created by Austin Beydler on 11/1/17.
//  Copyright © 2017 Austin Beydler. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {

    @IBOutlet weak var fieldSurveyIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
