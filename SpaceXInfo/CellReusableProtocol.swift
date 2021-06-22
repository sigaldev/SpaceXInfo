//
//  CellReusableProtocol.swift
//  SpaceXInfo
//
//  Created by Danil Sigal on 21.06.2021.
//

import UIKit

protocol CellReusableProtocol {
    static var identifier: String { get }
    static var nib: UINib { get }
}

extension CellReusableProtocol {
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
}
