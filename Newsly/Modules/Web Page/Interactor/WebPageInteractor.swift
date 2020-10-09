//
//  WebPageInteractor.swift
//  Newsly
//
//  Created by Ebubechukwu Dimobi on 08.10.2020.
//

import Foundation

class WebPageInteractor: WebPageInteractorInput {
    
//    var presenter: FavouritesPresenterInput?
    var dataBaseManager: DataBaseServiceProtocol?
    
    func saveAsFavourite(article: Article) {
        dataBaseManager?.saveFavourite(article: article)
    }
}
