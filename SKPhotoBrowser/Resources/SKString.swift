//
//  SKString.swift
//  YMPhotoBrowser
//
//  Created by Yakov Manshin on 5/19/22.
//  Copyright © 2022 Yakov Manshin. All rights reserved.
//

import Foundation

enum SKString {
    
    private(set) static var actionViewCancelTitle = localizedString("SK_action_view_cancel_title")
    private(set) static var closeButtonAccessibilityHint = localizedString("SK_close_button_accessibility_hint")
    private(set) static var closeButtonAccessibilityLabel = localizedString("SK_close_button_accessibility_label")
    private(set) static var fullScreenImageAccessibilityHint = localizedString("SK_full_screen_image_accessibility_hint")
    private(set) static var photoBrowserCancelTitle = localizedString("SK_photo_browser_cancel_title")
    
    private static func localizedString(_ key: String, comment: String = "") -> String {
        NSLocalizedString(key, bundle: .module, comment: comment)
    }
    
}
