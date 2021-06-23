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
    @IBAction func favoriteButtonTapped(_ sender: UIButton) {
    }
    
    static let identifier = "MusicTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(music: Music) {
        let musicTitle = music.title
        let artist = music.artist

        musicTitleLabel.text = musicTitle
        artistLabel.text = artist
    }

}
