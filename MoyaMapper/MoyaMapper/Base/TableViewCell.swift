//
//  TableViewCell.swift
//  GoldExchange
//
//  Created by apple on 2020/5/15.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    lazy var containerView: UIView = {
        let view = UIView()
        self.contentView.addSubview(view)
        view.snp.makeConstraints({ (make) in
            make.edges.equalToSuperview().inset(UIEdgeInsets(horizontal: 32, vertical: 0))
        })
        return view
    }()
    
    lazy var stackView: UIStackView = {
        let subviews: [UIView] = []
        let view = UIStackView(arrangedSubviews: subviews)
        view.axis = .horizontal
        view.alignment = .center
        self.containerView.addSubview(view)
        view.snp.makeConstraints({ (make) in
            make.edges.equalToSuperview()
        })
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        makeUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        makeUI()
    }
    
    func makeUI() {
        selectionStyle = .none
    }

}
