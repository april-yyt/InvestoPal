//
//  NewsArticleView.swift
//  StocksApp
//
//  Created by April Yang on 5/1/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewsArticleView: View {
    let article: NewsArticle

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            WebImage(url: URL(string: article.imageUrl))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()

            Text(article.title)
                .font(.headline)
                .foregroundColor(.primary)
                .lineLimit(2)

            Text(article.author)
                .font(.subheadline)
                .foregroundColor(.secondary)

            Text(article.publishedAt)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

//struct NewsArticleView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsArticleView(article: )
//    }
//}
