//
//  AlbumDetailView.swift
//  musicPlayer
//
//  Created by Julia Silveira de Souza on 21/06/21.
//

import UIKit

class AlbumDetailViewCell: UITableViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var musicTitleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBAction func FavoriteButtonTapped(_ sender: UIButton) {
    }

    var musicService = try! MusicService()
    
    static let identifier = "AlbumDetailViewCell"
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    public func configure(item: MusicCollection) {
        let AlbumImage = musicService.getCoverImage(forItemIded: item.id)
        let AlbumTitle = item.title
        let artist = item.mainPerson

        imageCell.image = AlbumImage
        musicTitleLabel.text = AlbumTitle
        artistLabel.text = artist
    }
}
