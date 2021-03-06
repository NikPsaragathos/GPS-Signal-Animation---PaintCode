//
//  SignalKit.swift
//  GlobalLocator
//
//  Created by NikPsaragathos on 12/06/2017.
//  Copyright © 2017 My. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com




import UIKit

public class SignalKit : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawGPSSignal(frame: CGRect = CGRect(x: 0, y: 0, width: 71, height: 30), signalStregth: CGFloat = 1) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Color Declarations
        let blackColorFill = UIColor(red: 0.079, green: 0.076, blue: 0.076, alpha: 1.000)
        let whiteColorFill = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        
        //// Variable Declarations
        let signalFill1 = signalStregth >= 1 ? blackColorFill : whiteColorFill
        let signalFill2 = signalStregth >= 2 ? blackColorFill : whiteColorFill
        let signalFill3 = signalStregth >= 3 ? blackColorFill : whiteColorFill
        let signalFill4 = signalStregth >= 4 ? blackColorFill : whiteColorFill
        let signalFill5 = signalStregth >= 5 ? blackColorFill : whiteColorFill
        
        //// Text Drawing
        let textRect = CGRect(x: frame.minX + 28, y: frame.minY + 4, width: 20, height: 9)
        let textTextContent = "GPS"
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .left
        let textFontAttributes = [
            NSFontAttributeName: UIFont.systemFont(ofSize: 8),
            NSForegroundColorAttributeName: UIColor.black,
            NSParagraphStyleAttributeName: textStyle,
            ]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
        
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: frame.minX + 28.5, y: frame.minY + 23.5, width: 4, height: 6))
        signalFill1.setFill()
        rectanglePath.fill()
        blackColorFill.setStroke()
        rectanglePath.lineWidth = 1
        rectanglePath.lineCapStyle = .round
        rectanglePath.lineJoinStyle = .bevel
        rectanglePath.stroke()
        
        
        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: frame.minX + 38.5, y: frame.minY + 16.5, width: 4, height: 13))
        signalFill2.setFill()
        rectangle2Path.fill()
        blackColorFill.setStroke()
        rectangle2Path.lineWidth = 1
        rectangle2Path.lineCapStyle = .round
        rectangle2Path.lineJoinStyle = .bevel
        rectangle2Path.stroke()
        
        
        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: frame.minX + 47.5, y: frame.minY + 9.5, width: 4, height: 20))
        signalFill3.setFill()
        rectangle3Path.fill()
        blackColorFill.setStroke()
        rectangle3Path.lineWidth = 1
        rectangle3Path.lineCapStyle = .round
        rectangle3Path.lineJoinStyle = .bevel
        rectangle3Path.stroke()
        
        
        //// Rectangle 4 Drawing
        let rectangle4Path = UIBezierPath(rect: CGRect(x: frame.minX + 56.5, y: frame.minY + 4.5, width: 4, height: 25))
        signalFill4.setFill()
        rectangle4Path.fill()
        blackColorFill.setStroke()
        rectangle4Path.lineWidth = 1
        rectangle4Path.lineCapStyle = .round
        rectangle4Path.lineJoinStyle = .round
        rectangle4Path.stroke()
        
        
        //// Rectangle 5 Drawing
        let rectangle5Path = UIBezierPath(rect: CGRect(x: frame.minX + 65.5, y: frame.minY + 0.5, width: 4, height: 29))
        signalFill5.setFill()
        rectangle5Path.fill()
        blackColorFill.setStroke()
        rectangle5Path.lineWidth = 1
        rectangle5Path.lineCapStyle = .round
        rectangle5Path.lineJoinStyle = .bevel
        rectangle5Path.stroke()
    }

}
