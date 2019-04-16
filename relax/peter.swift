//
//  peter.swift
//  relax
//
//  Created by 金陳廷 on 2019/4/16.
//  Copyright © 2019 notu. All rights reserved.
//

import UIKit

class peter: UIImageView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
      
        
        
        
        
        let path = UIBezierPath(ovalIn: CGRect(x: 55, y: 50, width: 300, height: 300))
        
        path.close()
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        layer.mask = shapeLayer
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
