//
//  HomeBannerCell.swift
//  GoldExchange
//
//  Created by apple on 2020/5/15.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import UIKit
import FSPagerView

class HomeBannerCell: TableViewCell, FSPagerViewDataSource, FSPagerViewDelegate {

    lazy var pagerView = FSPagerView().then {
        $0.delegate = self
        $0.dataSource = self
        $0.register(FSPagerViewCell.self, forCellWithReuseIdentifier: FSPagerViewCell.description())
        stackView.addArrangedSubview($0)
    }
  
    override func makeUI() {
        self.backgroundColor = .red
        pagerView.snp.makeConstraints { $0.height.equalTo(100) }
    }
    
    
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return 5
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        return pagerView.dequeueReusableCell(withReuseIdentifier: FSPagerViewCell.description(), at: index)
    }
    
    

}
