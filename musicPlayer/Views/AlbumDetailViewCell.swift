//
//  AlbumDetailView.swift
//  musicPlayer
//
//  Created by Julia Silveira de Souza on 21/06/21.
//

import UIKit

class AlbumDetailViewCell: UITableViewCell {
    
    @IBOutlet weak var albumCoverImage: UIImageView!
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var numberOfMusicsTitleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    static let identifier = "AlbumDetailViewCell"
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    public func configure(item: MusicCollection) {
        let albumTitle = item.title
        let artist = item.mainPerson
        let numberOfMusics = String(item.musics.count)

        albumTitleLabel.text = albumTitle
        artistLabel.text = artist
        numberOfMusicsTitleLabel.text = numberOfMusics
        releaseDateLabel.text = "Okay"
    }
}
