//
//  FavouritesInteractor.swift
//  Newsly
//
//  Created by Meitar Basson on 07/10/2020.
//

import Foundation

class FavouritesInteractor: FavouritesInteractorInput {
    
    var presenter: FavouritesPresenterInput?
    var apiManager: NetworkService<ArticleEndpoint>?
    var dataBaseManager: DataBaseServiceProtocol?
    
    func fetchFavouritesArticles() {
        // MARK: Todo - Change it to fetch from firebase
        dataBaseManager?.loadData()
    }
    
    func searchByName(by name: String, articles: [Article]) -> [Article] {
        var filteredList = [Article]()
        filteredList = articles.filter { (articleToFilter) in
            guard let title = articleToFilter.title else { return false }
            return title.contains(name)
        }
        return filteredList
    }
    
}
