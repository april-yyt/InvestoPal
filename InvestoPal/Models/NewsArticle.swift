//
//  NewsArticle.swift
//  InvestoPal
//
//  Created by April Yang on 4/26/23.
//

import Foundation

struct NewsArticle: Identifiable {
    let id: Int
    let title: String
    let author: String
    let imageUrl: String
    let publishedAt: String
    let topic: NewsView.Topic
    let url: String
}
