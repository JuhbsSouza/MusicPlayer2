//
//  LibraryTableViewCell.swift
//  musicPlayer
//
//  Created by Julia Silveira de Souza on 18/06/21.
//

import UIKit

class LibraryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBAction func DetailButtonTapped(_ sender: UIButton) {
    }

    var musicService = try! MusicService()
    
    static let identifier = "LibraryTableViewCell"
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    public func configure(item: MusicCollection) {
        let image = musicService.getCoverImage(forItemIded: item.id)
        let title = item.albumArtistDescription
        let artist = item.albumDescription

        imageCell.image = image
        albumTitleLabel.text = title
        descriptionLabel.text = artist
    }
}
