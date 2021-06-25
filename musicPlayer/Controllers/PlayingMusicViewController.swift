//
//  PlayingMusicViewController.swift
//  musicPlayer
//
//  Created by Julia Silveira de Souza on 21/06/21.
//

import UIKit

class PlayingMusicViewController: UIViewController {
    
    var musicService = try! MusicService()
    var music: Music?
    var collections: [MusicCollection] = []
    var collectionSelected: MusicCollection?
    static let identifier = "PlayingMusicView"
    
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var musicNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var musicProgressBar: UIProgressView!
    
    @IBAction func favoriteButton(_ sender: UIButton) {
        musicService.toggleFavorite(music: self.music!, isFavorite: true)
    }
    @IBAction func playAndPauseButton(_ sender: Any) {
        musicService.startPlaying(music: self.music!)
    }
    @IBAction func fowardButton(_ sender: Any) {
    }
    @IBAction func backButton(_ sender: Any) {
    }

    public func configure(item: Music) {
        musicNameLabel.text = item.title
        artistNameLabel.text = item.artist
        self.music = item
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
