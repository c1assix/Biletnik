//
//  CardTableViewCell.swift
//  Biletnik
//
//  Created by Лев Купчинов on 03.11.17.
//  Copyright © 2017 Лев Купчинов. All rights reserved.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var cardStyle: UILabel!
    
    func setup(with title: String) {
        self.titleLabel.text = title
        cardStyle.layer.shadowColor = UIColor.black.cgColor
        cardStyle.layer.shadowOpacity = 0.1
        cardStyle.layer.shadowOffset = CGSize.zero
        cardStyle.layer.shadowRadius = 10
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
