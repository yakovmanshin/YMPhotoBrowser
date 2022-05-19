//
//  SKButtons.swift
//  SKPhotoBrowser
//
//  Created by 鈴木 啓司 on 2016/08/09.
//  Copyright © 2016年 suzuki_keishi. All rights reserved.
//

import UIKit

@available(iOSApplicationExtension, unavailable)
class SKButton: UIButton {
    internal var showFrame: CGRect!
    internal var hideFrame: CGRect!
    
    fileprivate var insets: UIEdgeInsets {
        if SKMesurement.isPhone {
            return UIEdgeInsets(top: 15.25, left: 15.25, bottom: 15.25, right: 15.25)
        } else {
            return UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12)
        }
    }
    fileprivate let size: CGSize = CGSize(width: 44, height: 44)
    fileprivate var marginX: CGFloat = 0
    fileprivate var marginY: CGFloat = 0
    fileprivate var extraMarginY: CGFloat = 20 //NOTE: dynamic to static 
    
    func setup(_ image: UIImage) {
        backgroundColor = .clear
        imageEdgeInsets = insets
        translatesAutoresizingMaskIntoConstraints = true
        autoresizingMask = [.flexibleBottomMargin, .flexibleLeftMargin, .flexibleRightMargin, .flexibleTopMargin]
        
        setImage(image, for: .normal)
    }
  
    func setFrameSize(_ size: CGSize? = nil) {
        guard let size = size else { return }
        
        let newRect = CGRect(x: marginX, y: marginY, width: size.width, height: size.height)
        frame = newRect
        showFrame = newRect
        hideFrame = CGRect(x: marginX, y: -marginY, width: size.width, height: size.height)
    }
    
    func updateFrame(_ frameSize: CGSize) { }
}

@available(iOSApplicationExtension, unavailable)
class SKCloseButton: SKButton {
    override var marginX: CGFloat {
        get {
            return SKPhotoBrowserOptions.swapCloseAndDeleteButtons
                ? SKMesurement.screenWidth - SKButtonOptions.closeButtonPadding.x - self.size.width
                : SKButtonOptions.closeButtonPadding.x
        }
        set { super.marginX = newValue }
    }
    override var marginY: CGFloat {
        get { return SKButtonOptions.closeButtonPadding.y + extraMarginY }
        set { super.marginY = newValue }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup(SKImage.close)
        showFrame = CGRect(x: marginX, y: marginY, width: size.width, height: size.height)
        hideFrame = CGRect(x: marginX, y: -marginY, width: size.width, height: size.height)
        
        configureAccessibility()
    }
    
    private func configureAccessibility() {
        accessibilityLabel = SKString.closeButtonAccessibilityLabel
        accessibilityHint = SKString.closeButtonAccessibilityHint
    }
    
}

@available(iOSApplicationExtension, unavailable)
class SKDeleteButton: SKButton {
    override var marginX: CGFloat {
        get {
            return SKPhotoBrowserOptions.swapCloseAndDeleteButtons
                ? SKButtonOptions.deleteButtonPadding.x
                : SKMesurement.screenWidth - SKButtonOptions.deleteButtonPadding.x - self.size.width
        }
        set { super.marginX = newValue }
    }
    override var marginY: CGFloat {
        get { return SKButtonOptions.deleteButtonPadding.y + extraMarginY }
        set { super.marginY = newValue }
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup(SKImage.delete)
        showFrame = CGRect(x: marginX, y: marginY, width: size.width, height: size.height)
        hideFrame = CGRect(x: marginX, y: -marginY, width: size.width, height: size.height)
    }
}
