//
//  CustomTableViewCell.swift
//  Memorium
//
//  Created by Victoria Klimova on 05.12.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageOfPlace: UIImageView!
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
