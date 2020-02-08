//
//  DocumentTableViewCell.swift
//  Document
//
//  Created by Austin Terranova on 2/6/20.
//  Copyright © 2020 Austin Terranova. All rights reserved.
//

import UIKit

class DocumentTableViewCell: UITableViewCell {
    //var documents = [Document]()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var sizeLabel: UILabel!
    
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
