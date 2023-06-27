//
//  File.swift
//  
//
//  Created by 杨正凯 on 2023/6/27.
//

import UIKit

public class ZLCollectionLayoutForLocalization: UICollectionViewFlowLayout {
    open override var flipsHorizontallyInOppositeLayoutDirection: Bool {
        return UIView.appearance().semanticContentAttribute == .forceRightToLeft
    }
}
