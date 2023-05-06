//
//  ItemTableViewCell.swift
//  semana06
//
//  Created by Javier Aponte on 6/05/23.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imgWonder: UIImageView!
    @IBOutlet weak var lblWonder: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
