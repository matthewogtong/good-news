//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Matthew Ogtong on 1/19/22.
//

import Foundation

//MARK: - ArticleListViewModel

struct ArticleListViewModel {
    
    let articles: [Article]
    
}

extension ArticleListViewModel {
    
    var numOfSections: Int {
        return 1
    }
    
    func numOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
        
}

//MARK: - ArticleViewModel

struct ArticleViewModel {
    
    private let article: Article
    
}

extension ArticleViewModel {
    
    init(_ article: Article) {
        self.article = article
    }
    
}

extension ArticleViewModel {
    
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description
    }
    
}
