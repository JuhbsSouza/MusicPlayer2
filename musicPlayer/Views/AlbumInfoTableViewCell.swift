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
        let numberOfMusics = String(album.musics.count) + " songs, "

        var albumLength: Double = 0.0
        for i in 0..<album.musics.count {
            albumLength += album.musics[i].length
        }
        let albumLenghtFormatted = FormatterHelper.time(for: Int(albumLength))
        
        let releaseDate = FormatterHelper.date(date: album.referenceDate)

        albumTitleLabel.text = album.title
        albumArtistLabel.text = "Album by " + album.mainPerson
        numberOfMusicsAndLengthLabel.text = numberOfMusics + albumLenghtFormatted
        releaseDateLabel.text = "Released in " + releaseDate
        albumDescriptionLabel.text = album.albumDescription
    }
}
