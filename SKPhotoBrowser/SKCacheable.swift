//
//  SKCacheable.swift
//  SKPhotoBrowser
//
//  Created by Kevin Wolkober on 6/13/16.
//  Copyright © 2016 suzuki_keishi. All rights reserved.
//

import UIKit.UIImage

@available(iOSApplicationExtension, unavailable)
public protocol SKCacheable {}

@available(iOSApplicationExtension, unavailable)
public protocol SKImageCacheable: SKCacheable {
    func imageForKey(_ key: String) -> UIImage?
    func setImage(_ image: UIImage, forKey key: String)
    func removeImageForKey(_ key: String)
    func removeAllImages()
}

@available(iOSApplicationExtension, unavailable)
public protocol SKRequestResponseCacheable: SKCacheable {
    func cachedResponseForRequest(_ request: URLRequest) -> CachedURLResponse?
    func storeCachedResponse(_ cachedResponse: CachedURLResponse, forRequest request: URLRequest)
}
