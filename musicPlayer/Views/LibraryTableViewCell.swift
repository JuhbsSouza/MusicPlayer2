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

    static let identifier = "LibraryTableViewCell"
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    public func configure(item: MusicCollection) {
        let title = item.title
        let artist = item.mainPerson

        albumTitleLabel.text = title
        descriptionLabel.text = artist
    }
}
