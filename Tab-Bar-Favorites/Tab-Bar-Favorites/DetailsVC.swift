//
//  DetailsVC.swift
//  Tab-Bar-Favorites
//
//  Created by Ratislav Ovchinnikov on 21.11.2025.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var reviewLabel: UILabel!
    @IBOutlet var genreLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var cover: UIImageView!
    
    var item: Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cover.layer.cornerRadius = 12
        
        guard let item = item else { return }
        
        cover.image = item.image
        titleLabel.text = item.title
        subtitleLabel.text = item.subtitle
        reviewLabel.text = item.review
        genreLabel.text = item.genre
    }
//    private func setupUI() {
//        // Configure image view
//        cover.layer.cornerRadius = 12
//        cover.clipsToBounds = true
//        cover.contentMode = .scaleAspectFill
//        
//        // Configure labels
//        titleLabel.font = UIFont.systemFont(ofSize: 28, weight: .bold)
//        titleLabel.numberOfLines = 0
//        
//        subtitleLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
//        subtitleLabel.textColor = .secondaryLabel
//        
//        reviewLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
//        reviewLabel.numberOfLines = 0
//    }
}
