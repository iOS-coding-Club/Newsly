//
//  WebViewAssembly.swift
//  Newsly
//
//  Created by Meitar Basson on 08/10/2020.
//

import UIKit

class WebPageViewAssembly {
    public static func assemble(article: Article?) -> UIViewController {
        let view = WebPageViewController()
        view.title = article?.source.name
        
        let presenter = WebPagePresenter()
        
        let interactor = WebPageInteractor()
        
        let dataBaseService: DataBaseService? = ServiceLocator.shared.getService()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.urlString = article?.url
        presenter.article = article
        presenter.interactor = interactor
        
//        interactor.presenter = presenter
        interactor.dataBaseManager = dataBaseService
        
        return view
    }
}
