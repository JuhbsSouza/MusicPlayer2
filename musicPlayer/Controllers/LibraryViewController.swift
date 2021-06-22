//
//  LibraryViewController.swift
//  musicPlayer
//
//  Created by Julia Silveira de Souza on 18/06/21.
//

import UIKit

class LibraryViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    var musicService = try! MusicService()
    var collections: [MusicCollection] = []
    var collectionSelected: MusicCollection?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension LibraryViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicService.loadLibrary().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: LibraryTableViewCell.identifier) as? LibraryTableViewCell
        else {
            return UITableViewCell()
        }

        collections = musicService.loadLibrary()
        collectionSelected = collections[indexPath.row]

        cell.imageCell.image = musicService.getCoverImage(forItemIded: collectionSelected!.id)
        cell.configure(item: collectionSelected!)

        return cell
    }
}

extension LibraryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "CollectionDetailSegue", sender: nil)
        print("detail")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CollectionDetailSegue" {
            guard let viewController = segue.destination as? AlbumDetailViewController
            else {
                print(Error.self)
                return
            }
            viewController.musicCollection = collectionSelected
        }
    }
}
