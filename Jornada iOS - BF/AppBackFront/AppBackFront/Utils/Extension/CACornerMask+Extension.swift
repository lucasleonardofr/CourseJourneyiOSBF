//
//  CACornerMask+Extension.swift
//  AppBackFront
//
//  Created by Lucas Leonardo Freitas on 15/11/24.
//

import Foundation
import UIKit

extension CACornerMask {
    
    static public let bottomRight: CACornerMask = .layerMaxXMaxYCorner
    static public let bottomLeft: CACornerMask = .layerMinXMaxYCorner
    static public let topRight: CACornerMask = .layerMaxXMinYCorner
    static public let topLeft: CACornerMask = .layerMinXMinYCorner
    
}
