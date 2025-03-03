//
//  NftDetailViewModel.swift
//  AppBackFront
//
//  Created by Lucas Leonardo Freitas on 14/11/24.
//

import UIKit

class NftDetailViewModel {
    
    private let nft: Nft
    
    init(nft: Nft) {
        self.nft = nft
    }
    
    //MARK: -
    
    public var numberOfRowsInSection: Int {
        return 3
    }
    
    public var nftImage: String {
        return nft.nftImage ?? ""
    }
    
    public var idNft: Int {
        return nft.nftID ?? 0
    }
    public var titleNft: String {
        return nft.nftNameImage ?? ""
    }
    public var descriptionNft: String {
        return nft.nftDescription ?? ""
    }
    
    public var getNft: Nft {
        return nft
    }
    
    public func heightForRow(at indexPath: IndexPath, width: CGFloat) -> CGFloat {
        switch NameCellNftDetail(rawValue: indexPath.row) {
        case .nftImage:
            return 400
        case .description:
            return descriptionNft.height(withConstrainedWidth: width - 40,
                                         font: UIFont.systemFont(ofSize: 18)) + 89
        case .lastestDeal:
            return HeightLastestDeal.height.rawValue * CGFloat(nft.latestDeals?.count ?? 0) + 75
        default:
            return 0
        }
    }
}
