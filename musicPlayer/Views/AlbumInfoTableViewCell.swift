//
//  AlbumInfoTableViewCell.swift
//  musicPlayer
//
//  Created by Alex Freitas on 23/06/21.
//

import UIKit

class AlbumInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var albumCoverImage: UIImageView!
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var albumArtistLabel: UILabel!
    @IBOutlet weak var numberOfMusicsAndLengthLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var albumDescriptionLabel: UILabel!

    static let identifier = "AlbumInfoTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(with album: MusicCollection) {
        albumTitleLabel.text = album.title
        albumArtistLabel.text = album.mainPerson
        albumDescriptionLabel.text = album.albumDescription
    }
}
