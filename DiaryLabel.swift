//
//  DiaryLabel.swift
//  Diary
//
//  Created by Noirozr on 15/6/10.
//  Copyright (c) 2015年 Yongjia Liu. All rights reserved.
//

import UIKit

class DiaryLabel: UILabel {

    var textAttributes: [NSObject : AnyObject]!
    
    convenience init (fontName: String, labelText: String, fontSize: CGFloat, lineHeight: CGFloat) {
        
        self.init(frame:CGRectZero)
        
        let font = UIFont(name: fontName, size: fontSize) as UIFont!
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineHeight
        
        textAttributes = [NSFontAttributeName: font, NSParagraphStyleAttributeName: paragraphStyle]
        
        var labelSize = sizeHeightWithText(labelText, fontSize: fontSize, textAttributes: textAttributes)
        
        self.frame = CGRectMake(0, 0, labelSize.width, labelSize.height)
        
        self.attributedText = NSAttributedString(string: labelText, attributes: textAttributes)
        self.lineBreakMode = NSLineBreakMode.ByCharWrapping
        self.numberOfLines = 0
        
    }
    func sizeHeightWithText(labelText: NSString, fontSize: CGFloat, textAttributes: [NSObject : AnyObject!]) -> CGRect {
        return labelText.boundingRectWithSize(CGSizeMake(fontSize, 480), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: textAttributes, context: nil)
    }
    
    
    func resizeLabelWithFontName(fontName: String, labelText: String, fontSize: CGFloat, lineHeight: CGFloat) {
        
        let font = UIFont(name: fontName, size: fontSize) as UIFont!
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineHeight
        
        textAttributes = [NSFontAttributeName: font, NSForegroundColorAttributeName: UIColor.blackColor(), NSParagraphStyleAttributeName: paragraphStyle]
        
        var labelSize = sizeHeightWithText(labelText, fontSize: fontSize, textAttributes: textAttributes)
        
        self.frame = CGRectMake(0, 0, labelSize.width, labelSize.height)
        
        self.attributedText = NSAttributedString(string: labelText, attributes: textAttributes)
        self.lineBreakMode = NSLineBreakMode.ByCharWrapping
        self.numberOfLines = 0
    }
    
    func updateText(labelText: String) {
        
        var labelSize = sizeHeightWithText(labelText, fontSize: self.font.pointSize, textAttributes: textAttributes)
        self.frame = CGRectMake(0, 0, labelSize.width, labelSize.height)
        self.attributedText = NSAttributedString(string: labelText, attributes: textAttributes)
    }
    
    
    func updateLabelColor(color: UIColor) {
        
        textAttributes[NSForegroundColorAttributeName] = color
        self.attributedText = NSAttributedString(string: self.attributedText.string, attributes: textAttributes)
    }
    
}
