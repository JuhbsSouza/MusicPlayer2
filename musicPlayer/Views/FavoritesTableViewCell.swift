//
//  CustomTableViewCell.swift
//  musicPlayer
//
//  Created by Julia Silveira de Souza on 18/06/21.
//

import UIKit

class FavoritesTableViewCell: UITableViewCell {
    
    var musicService = try! MusicService()
    var music: Music?
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var musicTitleLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBAction func favoriteButtonTapped(_ sender: UIButton) {
        musicService.toggleFavorite(music: self.music!, isFavorite: false)
    }
        
    static let identifier = "FavoriteTableViewCell"
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(item: Music) {
        musicTitleLabel.text = item.title
        artistNameLabel.text = item.artist
        self.music = item
    }
}
