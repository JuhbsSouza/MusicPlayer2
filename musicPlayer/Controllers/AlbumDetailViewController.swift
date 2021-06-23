//
//  AlbumDetailViewController.swift
//  musicPlayer
//
//  Created by Julia Silveira de Souza on 21/06/21.
//

import UIKit

class AlbumDetailViewController: UIViewController {
            
    @IBOutlet weak var tableView: UITableView!
    @IBAction func albumInfoButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ShowAlbumInfo", sender: nil)
    }

    var musicService = try! MusicService()
    var musicCollection: MusicCollection?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowAlbumInfo" {
            guard let viewController = segue.destination as? AlbumInfoViewController
            else {
                print(Error.self)
                return
            }
            viewController.musicCollection = musicCollection
        }
    }
}

extension AlbumDetailViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let numberOfMusics = musicCollection?.musics.count {
            let numberOfRows = numberOfMusics + 1
            print(numberOfRows)
            return numberOfRows
        } else {
            return 0
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: AlbumDetailViewCell.identifier) as? AlbumDetailViewCell
            else {
                return UITableViewCell()
            }
            cell.albumCoverImage.image = musicService.getCoverImage(forItemIded: musicCollection!.id)
            cell.configure(item: musicCollection!)
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicTableViewCell.identifier) as? MusicTableViewCell
            else {
                return UITableViewCell()
            }
            cell.albumCoverImage.image = musicService.getCoverImage(forItemIded: musicCollection!.id)
            let currentMusic = indexPath.row - 1
            cell.configure(music: musicCollection!.musics[currentMusic])
            print(currentMusic)

            return cell
        }
    }
}

extension AlbumDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
