//
//  CustomTableViewCell.swift
//  musicPlayer
//
//  Created by Julia Silveira de Souza on 18/06/21.
//

import UIKit

class FavoritesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    
    @IBOutlet weak var albumTitleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBAction func favoriteButtonTapped(_ sender: UIButton) {
    }
    
    static let identifier = "FavoriteTableViewCell"
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
