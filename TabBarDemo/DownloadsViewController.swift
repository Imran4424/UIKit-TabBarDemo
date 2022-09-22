//
//  DownloadsViewController.swift
//  TabBarDemo
//
//  Created by Shah Md Imran Hossain on 23/9/22.
//

import UIKit

class DownloadsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var downloads = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        // populating downloads
        downloads.append("table view tutorial")
        downloads.append("collection view tutorial")
        downloads.append("navigation controller tutorial")
        downloads.append("tabbar controller tutorial")
    }
}

// MARK: - Table View Data Source
extension DownloadsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return downloads.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as? DownloadTableViewCell else {
            print("Failed table view deque")
            return UITableViewCell()
        }
        
        cell.title.text = downloads[indexPath.row]
        return cell
    }
}

// MARK: - Table View Delegate
extension DownloadsViewController: UITableViewDelegate {
    
}

class DownloadTableViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
}
