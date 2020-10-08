//
//  FavouritesAssembly.swift
//  Newsly
//
//  Created by Meitar Basson on 07/10/2020.
//

import UIKit

class FavouritesAssembly {
    static func assemble() -> UIViewController {
        
        let view = FavouritesViewController()
        let collectionManager = FavouritesCollectionViewManager()
        let searchBarManager = FavouritesSearchBarManager()
        let preseneter = FavouritesPresenter()
        let interactor = FavouritesInteractor()
        let router = FavouritesRouter()
        
        view.presenter = preseneter
        
        collectionManager.delegate = preseneter
        searchBarManager.delegate = preseneter
        
        preseneter.view = view
        preseneter.interactor = interactor
        preseneter.router = router
        preseneter.collectionManager = collectionManager
        preseneter.searchBarManager = searchBarManager
        
        interactor.presenter = preseneter
        interactor.apiManager = NetworkService<ArticleEndpoint>()
        
        router.view = view
        
        return view
    }
    
}
