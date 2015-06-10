//
//  DiaryLayout.swift
//  Diary
//
//  Created by Noirozr on 15/6/10.
//  Copyright (c) 2015年 Yongjia Liu. All rights reserved.
//

import UIKit

class DiaryLayout: UICollectionViewFlowLayout {
    override func prepareLayout() {
        super.prepareLayout()
        let itemSize = CGSizeMake(itemWidth, itemHeight)
        self.itemSize = itemSize
        self.minimumInteritemSpacing = 0.0
        self.minimumLineSpacing = 0
    }
    
}
