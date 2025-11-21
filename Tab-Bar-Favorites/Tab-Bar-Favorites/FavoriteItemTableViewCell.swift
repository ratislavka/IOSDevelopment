//
//  FavoriteItemTableViewCell.swift
//  Tab-Bar-Favorites
//
//  Created by Ratislav Ovchinnikov on 21.11.2025.
//

import UIKit

class FavoriteItemTableViewCell: UITableViewCell {

    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var cover: UIImageView!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var reviewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cover.layer.cornerRadius = 12
        cover.clipsToBounds = true
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(with image: UIImage, title: String, subtitle: String, review: String) {
 
        
        cover.image = image
        titleLabel.text = title
        subtitleLabel.text = subtitle
        reviewLabel.text = review
    }

}
