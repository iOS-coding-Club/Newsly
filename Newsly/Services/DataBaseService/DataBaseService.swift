//
//  DataBaseService.swift
//  Newsly
//
//  Created by Meitar Basson on 09/10/2020.
//

import Foundation
import Firebase

protocol DataBaseServiceProtocol: class {
    func saveFavourite(article: Article)
//    func saveUserInfo(fullName: String, img: String)
    func queryFavourites(queryBy: String)
    func loadData() -> [Article]
}

class DataBaseService: DataBaseServiceProtocol {
    
    let db = Firestore.firestore()
    let uid = Firebase.Auth.auth().currentUser?.uid
    
    func saveFavourite(article: Article) {
        
    }
    
    func loadData() -> [Article] {
        return [Article]()
    }
    
    func queryFavourites(queryBy: String) {
//        <#code#>
    }
}
