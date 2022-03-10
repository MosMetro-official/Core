//
//  File.swift
//  
//
//  Created by polykuzin on 14/02/2022.
//

import UIKit

public typealias EdgeClosure = (_ view: UIView, _ superview: UIView) -> ([NSLayoutConstraint])

public extension UIView {
    
    // MARK: Constraints
    /**
     Method **adds** a view to the superView, seted translatesAutoresizingMaskIntoConstraints to **false** and activates constrates
     - parameters:
        - on: View on which view schould be fixed
     */
    func pin(on superview: UIView, _ callback: EdgeClosure) {
        superview.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        callback(self, superview).forEach {
            $0.isActive = true
        }
    }
}
