//
//  NewsHeadlineTVC.swift
//  GoodNews
//
//  Created by David Murillo on 6/3/20.
//  Copyright © 2020 MuriTech. All rights reserved.
//

import Foundation
import UIKit

class NewsHeadlineTVC:UITableViewController{
    
    let news = [["title":"This is the title","description":"This is the longest description"],["title":"This is the title 2","description":"This is the longest description This is the longest description This is the longest description This is the longest description This is the longest description This is the longest description"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    private func setupUI(){
     self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as? NewsHeadlineTVCell else{
            fatalError("No cell Founded")
        }
        
        cell.titleLbl.text = self.news[indexPath.row]["title"]
        cell.descriptionLbl.text = self.news[indexPath.row]["description"]
        
        return cell
    }
    
}
