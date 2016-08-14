//
//  CircleUIView.swift
//  basicStart
//
//  Created by John Barnes on 8/14/16.
//  Copyright © 2016 Andress Barnes. All rights reserved.
//

import UIKit

class CircleUIView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    override func drawRect(rect: CGRect) {
        
        let green_100: UIColor = UIColor.whiteColor()
        
        let parentViewBounds = self.bounds
        let parentViewWidth = CGRectGetWidth(parentViewBounds)
        let parentViewHeight = CGRectGetHeight(parentViewBounds)
        
        let ovalPath = UIBezierPath(ovalInRect: CGRect(x: 0, y: 0, width: parentViewWidth, height: parentViewHeight))
        
        green_100.setFill()
        ovalPath.fill()
        
    }
    
    
    

}
