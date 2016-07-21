//
//  MMACustomView.swift
//  IBDesignable-IBInspectable
//
//  Created by Madriz on 10/5/16.
//  Copyright © 2016 MMApps. All rights reserved.
//

import UIKit

@IBDesignable class MMACustomView: UIView {
    private var label = UILabel()
    
    @IBInspectable var text: String?
    @IBInspectable var textColor: UIColor?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        buildUI()
    }
    
    func buildUI() {
        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        refreshUI()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        refreshUI()
    }
    
    private func refreshUI () {
        label.text = text
        label.textColor = textColor
        label.sizeToFit()
        label.center = center
    }
}
