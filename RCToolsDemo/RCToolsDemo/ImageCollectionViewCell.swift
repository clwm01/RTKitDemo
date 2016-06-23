//
//  ImageCollectionViewCell.swift
//  RCToolsDemo
//
//  Created by Rex Tsao on 23/6/2016.
//  Copyright © 2016 rexcao. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    private var canvas: UIView?
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.canvas = UIView(frame: self.bounds)
        self.addSubview(self.canvas!)
        self.backgroundColor = UIColor.greenColor()
    }
    
    func reAttachLayer(pathLayer: CAShapeLayer) {
        if self.canvas!.layer.sublayers != nil {
            for layer in self.canvas!.layer.sublayers! {
                layer.removeFromSuperlayer()
            }
        }
        self.canvas?.layer.addSublayer(pathLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
