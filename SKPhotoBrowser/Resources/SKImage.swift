//
//  SKImage.swift
//  YMPhotoBrowser
//
//  Created by Yakov Manshin on 5/19/22.
//  Copyright © 2022 Yakov Manshin. All rights reserved.
//

import UIKit

enum SKImage {
    
    private(set) static var back = image("btn_common_back_wh")
    private(set) static var close = image("btn_common_close_wh")
    private(set) static var delete = image("btn_common_delete_wh")
    private(set) static var forward = image("btn_common_forward_wh")
    
    private static func image(_ name: String) -> UIImage {
        UIImage(named: name, in: .module, compatibleWith: nil) ?? UIImage()
    }
    
}
