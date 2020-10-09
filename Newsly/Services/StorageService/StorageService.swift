//
//  StorageService.swift
//  Newsly
//
//  Created by Meitar Basson on 09/10/2020.
//

import Foundation
import Firebase

protocol StorageServiceProtcol: class {
    func uploadImage()
    func downloadImage()
}

class StorageService: StorageServiceProtcol {
    
//    let storage = Storage.storage()
    
    let uid = Firebase.Auth.auth().currentUser?.uid
    
    func uploadImage() {
//        <#code#>
    }
    
    func downloadImage() {
//        <#code#>
    }
}
