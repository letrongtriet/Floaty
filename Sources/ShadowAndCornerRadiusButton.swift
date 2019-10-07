//
//  ShadowAndCornerRadiusButton.swift
//  Floaty
//
//  Created by Triet Le on 7.10.2019.
//  Copyright © 2019 Lee Sun-Hyoup. All rights reserved.
//

import UIKit

open class ShadowAndCornerRadiusButton: UIButton {
  
  private var shadowLayer: CAShapeLayer!
  
  override open func layoutSubviews() {
    super.layoutSubviews()
    
    if shadowLayer == nil {
      shadowLayer = CAShapeLayer()
      shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 6).cgPath
      shadowLayer.fillColor = UIColor.white.cgColor
      
      shadowLayer.shadowColor = UIColor.darkGray.cgColor
      shadowLayer.shadowPath = shadowLayer.path
      shadowLayer.shadowOffset = CGSize(width: 2.0, height: 2.0)
      shadowLayer.shadowOpacity = 0.8
      shadowLayer.shadowRadius = 2
      
      layer.insertSublayer(shadowLayer, at: 0)
    }
  }
  
}
