//
//  CustomView.swift
//  UIViewExtensions
//
//  Created by Saanvi on 03/04/22.
//

import Foundation
import UIKit

@IBDesignable class CustomView: UIView {
    
    @IBInspectable
    var bgColorCustom: UIColor = .systemGray {
        didSet {
            self.backgroundColor = bgColorCustom
        }
    }
    
    @IBInspectable
    var cornerRadiusCustom: CGFloat = 40 {
        didSet {
            self.layer.cornerRadius = cornerRadiusCustom
        }
    }
    
    @IBInspectable
    var circleViewCustom:Bool = false {
        didSet {
            self.layer.cornerRadius = min(self.frame.width, self.frame.height) / CGFloat(2.0)
        }
    }
    
    @IBInspectable
    var borderWidthCustom: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidthCustom
        }
    }
    
    @IBInspectable
    var borderColorCustom: UIColor = .white {
        didSet {
            self.layer.borderColor = borderColorCustom.cgColor
        }
    }
    
    @IBInspectable
    var shadowColorCustom: UIColor = .black {
        didSet {
            self.layer.shadowColor = shadowColorCustom.cgColor
        }
    }
    
    @IBInspectable
    var shadowRadiusCustom: CGFloat = 0 {
        didSet {
            self.layer.shadowRadius = shadowRadiusCustom
        }
    }
    
    @IBInspectable
    var shadowOpacityCustom: Float = 0 {
        didSet {
            self.layer.shadowOpacity = shadowOpacityCustom
        }
    }
    
    @IBInspectable
    var shadowOffsetCustom: CGSize = .zero {
        didSet {
            self.layer.shadowOffset = .zero
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = bgColorCustom
        self.layer.cornerRadius = cornerRadiusCustom
        self.layer.shadowColor = shadowColorCustom.cgColor
        self.layer.shadowRadius = shadowRadiusCustom
        self.layer.shadowOpacity = shadowOpacityCustom
        self.layer.shadowOffset = shadowOffsetCustom
        self.layer.borderWidth = borderWidthCustom
        self.layer.borderColor = borderColorCustom.cgColor
    }
    
}
