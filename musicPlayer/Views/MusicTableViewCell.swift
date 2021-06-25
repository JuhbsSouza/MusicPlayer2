//
//  MusicTableViewCell.swift
//  musicPlayer
//
//  Created by Julia Silveira de Souza on 22/06/21.
//

import UIKit

class MusicTableViewCell: UITableViewCell {

    @IBOutlet weak var albumCoverImage: UIImageView!
    @IBOutlet weak var musicTitleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBAction func favoriteButtonTapped(_ sender: UIButton) {
        guard let music = currentMusic else {
            return
        }
        self.isFavorite.toggle()
        self.delegate?.favoriteThisSong(music: music, isFavorite: isFavorite)
        configureFavButton(isFavorite: isFavorite)
    }

    weak var delegate: FavoriteActionDelegate?
    var currentMusic: Music?
    var isFavorite = false

    static let identifier = "MusicTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    fileprivate func configureFavButton(isFavorite: Bool) {
        if isFavorite {
            favoriteButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            favoriteButton.tintColor = .red
        } else {
            favoriteButton.setImage(UIImage(systemName: "heart"), for: .normal)
            favoriteButton.tintColor = .lightGray
        }
    }

    public func configure(music: Music, isFavorite: Bool) {
        currentMusic = music
        self.isFavorite = isFavorite
        let musicTitle = music.title
        let artist = music.artist

        configureFavButton(isFavorite: isFavorite)

        musicTitleLabel.text = musicTitle
        artistLabel.text = artist
    }

}
