//
//  AlbumArtistInfoTableViewCell.swift
//  musicPlayer
//
//  Created by Alex Freitas on 23/06/21.
//

import UIKit

class AlbumArtistInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var aboutArtistLabel: UILabel!
    @IBOutlet weak var artistDescriptionLabel: UILabel!

    static let identifier = "AlbumArtistInfoTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(with collection: MusicCollection) {
        aboutArtistLabel.text = "About " + collection.mainPerson
        artistDescriptionLabel.text = collection.albumArtistDescription
    }
}
