//
//  imageViewController.swift
//  relax
//
//  Created by 金陳廷 on 2019/4/14.
//  Copyright © 2019 notu. All rights reserved.
//

import UIKit
import AVFoundation


class imageViewController: UIViewController {
    
    var Speed: Float?
    var Size: Float?
    var Red: Float?
    var Green: Float?
    var Blue: Float?
    var image: String?
  
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //view.backgroundColor = clear
        
        
        let views = UIView(frame: CGRect(x: 0, y: 0, width: 700, height: 1000))
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = views.bounds
        gradientLayer.colors = [UIColor.init(red:  CGFloat(1-Red!), green: CGFloat(1-Green!), blue: CGFloat(1-Blue!), alpha: 1.0).cgColor,UIColor.init(red:  CGFloat(Red!), green: CGFloat(Green!), blue: CGFloat(Blue!),alpha: 1.0).cgColor]
        
        gradientLayer.locations=[0,0.8]
        
        
        let snowEmitterCell = CAEmitterCell()
        snowEmitterCell.contents = UIImage(named: image!)?.cgImage
        snowEmitterCell.birthRate = 40  //秒/次
        snowEmitterCell.lifetime = 20   //維持多久秒
        snowEmitterCell.velocity = CGFloat(Speed!*(-50))//雪花移動的速度
        snowEmitterCell.velocityRange = -20
        snowEmitterCell.scaleRange = CGFloat(Size!)
        snowEmitterCell.emissionRange = .pi
        snowEmitterCell.scale = 0.06
        snowEmitterCell.yAcceleration = 30
        snowEmitterCell.xAcceleration = 5
        snowEmitterCell.spin = -0.5
        snowEmitterCell.spinRange = 1.0
        
        let snowEmitterLayer = CAEmitterLayer()
        snowEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2.0, y: -50)
        snowEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        snowEmitterLayer.emitterShape = CAEmitterLayerEmitterShape.line
        snowEmitterLayer.beginTime = CACurrentMediaTime()
        snowEmitterLayer.timeOffset = 10
        snowEmitterLayer.emitterCells = [snowEmitterCell]
        
        
        view.layer.insertSublayer( gradientLayer, at:0)
        view.layer.insertSublayer(snowEmitterLayer, at:1)
       
        //view.layer.insertSublayer(snowEmitterLayer, at:1)

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
