//
//  ViewController.swift
//  basicStart
//
//  Created by John Barnes on 8/13/16.
//  Copyright © 2016 Andress Barnes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        //set time to generateMoreCircles
        _ = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: #selector(self.genereteMoreCircles), userInfo: nil, repeats: true)
        
        
    }
    
    
    func generateCircle(xpos: CGFloat, ypos: CGFloat, size: CGFloat) {
        let testFrame : CGRect = CGRectMake(xpos, ypos, size, size)
        let testView : CircleUIView = CircleUIView(frame: testFrame)
        testView.backgroundColor = UIColor.clearColor()
        testView.layer.anchorPoint = CGPointMake(0.5, 0.5);
        testView.alpha = 0.0
        
        view.addSubview(testView)
        
        UIView.animateWithDuration(1.0, delay: 0.0, options: .CurveEaseIn, animations: {
            testView.transform = CGAffineTransformMakeScale(3.0, 3.0)
            testView.alpha = 0.4
            }, completion: {(value: Bool) in
                UIView.animateWithDuration(0.2, delay: 0.0, options: .CurveEaseIn, animations: {
                    testView.transform = CGAffineTransformMakeScale(4.1, 4.1)
                    testView.alpha = 0.0
                    }, completion: {(value: Bool) in
                        testView.removeFromSuperview()
                })
        })
        

        
        
    }
    
    
    
    func genereteMoreCircles()
    {
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        
        let screenWidth = UInt32(screenSize.width)
        let screenHeight = UInt32(screenSize.height)
        
        //get rand range for x and y positions
        let pxpos = arc4random_uniform(screenWidth) + 0;
        let pypos = arc4random_uniform(screenHeight) + 0;
        
        //let pxpos = arc4random_uniform(screenWidth) + 0;
        //let pypos = screenHeight/2;
        
        
        let fxpos = CGFloat(pxpos)
        let fypos = CGFloat(pypos)
        
        //get rand range for circle size
        let psize = arc4random_uniform(30) + 0;
        let fsize = CGFloat(psize)
        
        generateCircle(fxpos, ypos: fypos, size: fsize)
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    


}

