//
//  UIButton+ZLPhotoBrowser.swift
//  ZLPhotoBrowser
//
//  Created by 杨正凯 on 2023/5/25.
//

import UIKit

extension UIButton {
    /// 改变 imageView 和 titleLabel 的相对位置
    /// - Parameters:
    ///   - spacing: 两者的距离
    ///   - imageFirst: imageView 是否在左边, 默认在左边 值为 true
    public func alignHorizontal(spacing: CGFloat, imageFirst: Bool = true) {
        let isRTL = UIView.appearance().semanticContentAttribute == .forceRightToLeft
        let edgeOffset = spacing / (isRTL ? -2 : 2)
        imageEdgeInsets = UIEdgeInsets(top: 0,
                                       left: -edgeOffset,
                                       bottom: 0,
                                       right: edgeOffset)
        titleEdgeInsets = UIEdgeInsets(top: 0,
                                       left: edgeOffset,
                                       bottom: 0,
                                       right: -edgeOffset)

        if !imageFirst {
            transform = CGAffineTransform(scaleX: -1, y: 1)
            imageView?.transform = CGAffineTransform(scaleX: -1, y: 1)
            titleLabel?.transform = CGAffineTransform(scaleX: -1, y: 1)
        }

        // increase content width to avoid clipping
        contentEdgeInsets = UIEdgeInsets(top: 0, left: abs(edgeOffset), bottom: 0, right: abs(edgeOffset))
    }
}
