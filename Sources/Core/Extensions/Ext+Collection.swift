//
//  Ext+Collection.swift
//  
//
//  Created by Павел Кузин on 09/02/2022.
//

import Foundation

public extension Collection {
    
    subscript (safe index: Index) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
