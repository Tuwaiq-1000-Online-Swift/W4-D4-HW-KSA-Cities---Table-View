//
//  CityCell.swift
//  W4-D4-HW KSA Cities - Table View
//
//  Created by يعرُب on 20/04/1443 AH.
//

import UIKit

class CityCell: UITableViewCell {

    @IBOutlet weak var cityImageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
