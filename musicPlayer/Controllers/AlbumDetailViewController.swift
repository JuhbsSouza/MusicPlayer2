//
//  AlbumDetailViewController.swift
//  musicPlayer
//
//  Created by Julia Silveira de Souza on 21/06/21.
//

import UIKit

class AlbumDetailViewController: UIViewController {
            
    @IBOutlet weak var tableView: UITableView!
    
    var musicCollection: MusicCollection?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension AlbumDetailViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let numberOfMusics = musicCollection?.musics.count {
            let numberOfRows = numberOfMusics + 1
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
            cell.configure(item: musicCollection!)
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicTableViewCell.identifier) as? MusicTableViewCell
            else {
                return UITableViewCell()
            }
            return UITableViewCell()
        }
    }
    
    
}

extension AlbumDetailViewController: UITableViewDelegate {
        
}
