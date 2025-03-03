//
//  LastestDealTableViewCellViewModel.swift
//  AppBackFront
//
//  Created by Lucas Leonardo Freitas on 14/11/24.
//

import UIKit

enum HeightLastestDeal: CGFloat {
    case height = 70
}

class LastestDealTableViewCellViewModel {
    var nft: Nft?
    
    public func setNft(nft: Nft) {
        self.nft = nft
    }
    
    public var title: String {
        nft?.titleLatestDeals ?? ""
    }
    
    public var numberOfRowsInSection: Int {
        return nft?.latestDeals?.count ?? 0
    }
    
    public var heightForRowAt: CGFloat {
        return HeightLastestDeal.height.rawValue
    }
    
    public func loadCurrentLatestDeals(indexPath: IndexPath) -> LatestDeal {
        return nft?.latestDeals?[indexPath.row] ?? LatestDeal()
    }
    
    public func isInicial(indexPath: IndexPath) -> Bool{
        return indexPath.row == 0
    }
    public func isFinal(indexPath: IndexPath) -> Bool{
        return indexPath.row == numberOfRowsInSection - 1
    }

}
