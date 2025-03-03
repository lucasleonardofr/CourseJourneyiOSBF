//
//  PostCardViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Leonardo Freitas on 23/10/24.
//

import UIKit

class PostCardViewModel {
    
    private var listPosts: [Posts]
    
    init(listPosts: [Posts]) {
        self.listPosts = listPosts
    }
    
    public var numberOfItems: Int {
        listPosts.count
    }
    
    public func loadCurrentPosts(indexPath: IndexPath) -> Posts {
        listPosts[indexPath.row]
    }
}
