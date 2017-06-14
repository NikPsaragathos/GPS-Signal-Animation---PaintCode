//
//  SignalKitProgressView.swift
//  globallocator
//
//  Created by Nik Psaragkathos on 12/06/2017.
//  Copyright © 2017 NIK PSARAGKATHOS. All rights reserved.
//

import UIKit

@IBDesignable
class SignalKitProgressView: UIView {

    private var innerProgress : CGFloat = 0.0
    
    var progress : CGFloat{
        set (newProgress){
            innerProgress = newProgress
            setNeedsDisplay()
        }
        get{
            return innerProgress
        }
    }
    
    
    override func draw(_ rect: CGRect) {
        SignalKit.drawGPSSignal(frame: bounds, signalStregth: progress)
    }
    
}
