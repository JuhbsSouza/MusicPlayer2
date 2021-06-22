//
//  MusicTableViewCell.swift
//  musicPlayer
//
//  Created by Julia Silveira de Souza on 22/06/21.
//

import UIKit

class MusicTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var musicTitleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBAction func favoriteButtonTapped(_ sender: UIButton) {
    }

    var musicService = try! MusicService()
    
    static let identifier = "MusicTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(item: MusicCollection) {
        let albumImage = musicService.getCoverImage(forItemIded: item.id)
        let albumTitle = item.title
        let artist = item.mainPerson

        imageCell.image = albumImage
        musicTitleLabel.text = albumTitle
        artistLabel.text = artist
    }

}
