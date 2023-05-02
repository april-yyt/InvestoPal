//
//  NewsView.swift
//  InvestoPal
//
//  Created by April Yang on 5/1/23.
//

import SwiftUI
import SafariServices


// sample data
let sampleArticles = [
    NewsArticle(id: 1, title: "FinTech Article 1", author: "John Doe", imageUrl: "https://www.wealthwithin.com.au/public/img/exchange-traded-funds-vs-managed-funds.png", publishedAt: "2023-05-02", topic: .fintech, url: "https://towardsdatascience.com/please-stop-drawing-neural-networks-wrong-ffd02b67ad77"),
    NewsArticle(id: 2, title: "Stocks Article 1", author: "Jane Smith", imageUrl: "https://www.wealthwithin.com.au/public/img/the-risk-of-exchange-traded-funds.png", publishedAt: "2023-05-01", topic: .stocks, url: "https://medium.com/@hemansnation/god-level-data-science-machine-learning-full-stack-roadmap-2023-ed3c414597d0"),
    NewsArticle(id: 3, title: "Bonds Article 1", author: "Jane Smith", imageUrl: "https://www.wealthwithin.com.au/public/img/setting-a-stop-loss.png", publishedAt: "2023-04-30", topic: .bonds, url: "https://medium.com/@roiyeho/understanding-polynomial-regression-d963ebb7cc6e"),
    NewsArticle(id: 4, title: " Derivatives Article 1", author: "Jane Smith", imageUrl: "https://www.wealthwithin.com.au/public/img/speculating-on-a-bull-or-bear-market.jpg", publishedAt: "2023-04-30", topic: .derivatives, url: "https://mateusclira.medium.com/the-future-of-data-engineering-is-this-role-going-to-vanish-tech-recruiters-also-must-read-4b6253fdbe64"),
    NewsArticle(id: 5, title: "FinTech Article 2", author: "John Doe", imageUrl: "https://www.wealthwithin.com.au/public/img/trading-the-stock-market-for-profit.png", publishedAt: "2023-04-25", topic: .fintech, url: "https://nathanrosidi.medium.com/top-10-companies-that-hire-for-remote-data-analyst-jobs-14d2ba09a606"),
    // Add more articles with their corresponding topics...
]

struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        // No update needed
    }
}

struct NewsView: View {
    let articles: [NewsArticle] = sampleArticles

    enum Topic: String, CaseIterable {
        case fintech = "FinTech"
        case stocks = "Stocks"
        case bonds = "Bonds"
        case derivatives = "Derivatives"
    }

    @State private var selectedTopic = Topic.fintech

    var filteredArticles: [NewsArticle] {
        articles.filter { $0.topic == selectedTopic }
    }

    var body: some View {
            NavigationView {
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("News Articles")
                            .font(.largeTitle)
                            .bold()
                            .padding(.horizontal)

                        ForEach(filteredArticles) { article in
                            NewsArticleView(article: article)
                                .padding(.horizontal)
                        }
                    }
                }
                .background(Color(.systemGroupedBackground).edgesIgnoringSafeArea(.bottom))
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Picker("Select Topic", selection: $selectedTopic) {
                            ForEach(Topic.allCases, id: \.self) { topic in
                                Text(topic.rawValue).tag(topic)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                }
            }
        }
    }



struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
