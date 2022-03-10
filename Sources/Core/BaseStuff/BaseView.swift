//
//  BaseView.swift
//  
//
//  Created by polykuzin on 14/02/2022.
//

import UIKit

open class BaseView : UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemBackground
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
