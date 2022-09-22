//
//  RecentsViewController.swift
//  TabBarDemo
//
//  Created by Shah Md Imran Hossain on 22/9/22.
//

import UIKit

class RecentsViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var recents = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // populate recents
        recents.append("www.youtube.com")
        recents.append("www.google.com")
        recents.append("www.samsung.com")
        recents.append("www.apple.com")
        recents.append("www.microsoft.com")
    }
}

// MARK: - Collection View Datasource
extension RecentsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        recents.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as? RecentsCollectionViewCell else {
            print("Failed collection view deque")
            return UICollectionViewCell()
        }
        cell.title.text = recents[indexPath.row]
        return cell
    }
}

// MARK: - Collection View Delegate
extension RecentsViewController: UICollectionViewDelegate {
    
}

// MARK: - Collection View Cell
class RecentsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var title: UILabel!
}
