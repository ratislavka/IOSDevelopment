//
//  FavoriteItemTableViewCell.swift
//  My Favorites
//
//  Created by Ratislav Ovchinnikov on 14.11.2025.
//

import UIKit

class FavoriteItemTableViewCell: UITableViewCell {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!
    @IBOutlet private weak var imageContainer: UIImageView!
    @IBOutlet private weak var reviewLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(item: Item) {
        titleLabel.text = item.title
        subtitleLabel.text = item.subtitle
        imageContainer.image = item.image
        reviewLabel.text = item.review
    }

}
