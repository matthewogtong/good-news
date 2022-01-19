//
//  Article.swift
//  GoodNews
//
//  Created by Matthew Ogtong on 1/18/22.
//

import Foundation

struct ArticleList: Decodable {
    
    let articles: [Article]
    
}

struct Article: Decodable {
    
    let title: String
    let description: String
    
}
