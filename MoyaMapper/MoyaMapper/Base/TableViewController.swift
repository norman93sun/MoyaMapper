//
//  TableViewController.swift
//  GoldExchange
//
//  Created by apple on 2020/5/14.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import UIKit
import MJRefresh

class TableViewController: ViewController {
    
    var tableView: UITableView?
    var tableViewStyle: UITableView.Style = .plain
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
    }
    
    private func setupTableView() {
        tableView = UITableView(frame: .zero, style: tableViewStyle)
        tableView?.backgroundColor = UIColor.white
        
        tableView?.dataSource = self
        tableView?.delegate = self
        tableView?.estimatedSectionHeaderHeight = 0
        tableView?.estimatedSectionFooterHeight = 0
        tableView?.separatorInset = .zero
        
        tableView?.keyboardDismissMode = .interactive
        
        self.tableView?.tableFooterView = UIView()        
        
        tableView?.mj_header = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(headerRefresh))
        view.addSubview(tableView!)
        tableView?.snp.makeConstraints({ (make) in
            make.top.left.right.bottom.equalToSuperview()
        })
    }
    
    func hideMJHeader() -> Void {
        tableView?.mj_header = nil
    }
    
    func setupFooterRefresh() -> Void {
        tableView?.mj_footer = MJRefreshAutoNormalFooter(refreshingTarget: self, refreshingAction: #selector(footerRefresh))
    }
    
    @objc func headerRefresh() -> Void {
        self.endHeaderRefresh()
    }
    
    func endHeaderRefresh() -> Void {
        self.tableView?.mj_header?.endRefreshing()
    }
    
    @objc func footerRefresh() -> Void {
        self.endFooterRefresh()
    }
    
    func endFooterRefresh() -> Void {
        if self.tableView?.mj_footer != nil {
            self.tableView?.mj_footer?.endRefreshing()
            self.tableView?.mj_footer = nil
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    
    @objc func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    @objc func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    @objc func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
