//
//  WebPagePresenter.swift
//  Newsly
//
//  Created by Ebubechukwu Dimobi on 08.10.2020.
//

import Foundation

class WebPagePresenter {
    
    weak var view: WebPageViewInput?
    var interactor: WebPageInteractorInput?
    var urlString: String?
    var article: Article?
}

extension WebPagePresenter: WebPagePresenterProtocol {

    func viewDidLoad() {
        guard let urlString = self.urlString else { return }
        self.view?.showWebPage(url: urlString)
    }
    
    func saveArticle() {
        guard let article = self.article else { return }
        interactor?.saveAsFavourite(article: article)
    }
}

extension WebPagePresenter: WebPagePresenterInput {
    
}

extension WebPagePresenter: WebPageTextFieldsManagerDelegate {
    
}
