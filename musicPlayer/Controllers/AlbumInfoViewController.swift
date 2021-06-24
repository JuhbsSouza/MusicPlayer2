//
//  AlbumInfoViewController.swift
//  musicPlayer
//
//  Created by Alex Freitas on 23/06/21.
//

import UIKit

class AlbumInfoViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBAction func DismissButton(_ sender: UIBarButtonItem) {
    }
    
    var musicService = try! MusicService()
    var musicCollection: MusicCollection?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension AlbumInfoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: AlbumInfoTableViewCell.identifier) as? AlbumInfoTableViewCell
            else {
                return UITableViewCell()
            }
            cell.albumCoverImage.image = musicService.getCoverImage(forItemIded: musicCollection!.id)
            cell.configure(with: musicCollection!)
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: AlbumArtistInfoTableViewCell.identifier) as? AlbumArtistInfoTableViewCell
            else {
                return UITableViewCell()
            }
            cell.configure(with: musicCollection!)
            return cell
        }
    }
}

extension AlbumInfoViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
