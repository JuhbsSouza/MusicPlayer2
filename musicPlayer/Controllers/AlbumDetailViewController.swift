//
//  AlbumDetailViewController.swift
//  musicPlayer
//
//  Created by Julia Silveira de Souza on 21/06/21.
//

import UIKit

class AlbumDetailViewController: UIViewController {
            
    @IBOutlet weak var tableView: UITableView!
    
    var musicService = try! MusicService()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension AlbumDetailViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (musicService.getCollection(id: <#String#>)?.musics.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: AlbumDetailViewCell.identifier) as? AlbumDetailViewCell
            else {
                return UITableViewCell()
            }
            
            cell.configure(item: musicService.getCollection(id: MusicCollection))
            
        }else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicTableViewCell.identifier) as? MusicTableViewCell
            else {
                return UITableViewCell()
            }
            
        }
    }
    
    
}

extension AlbumDetailViewController: UITableViewDelegate {
        
}
