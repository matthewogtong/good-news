//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Matthew Ogtong on 1/17/22.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    var articleListVM: ArticleListViewModel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setup()
        
    }
    
    private func setup() {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url: URL = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=4c2c350016944d68834b38fcc151cbe3")!
        
        
        Webservice().getArticles(url: url) { articles in
            
            if let articles = articles {
                
                self.articleListVM = ArticleListViewModel(articles: articles)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }
            
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: K.reuseableCell, for: indexPath) as? ArticleTableViewCell else {
            fatalError("\(K.reuseableCell) not found.")
        }
        
        let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
        
        cell.titleLabel.text = articleVM.title
        cell.descriptionLabel.text = articleVM.description
        
        return cell
        
    }
    
}
