//
//  HomeController.swift
//  GoldExchange
//
//  Created by apple on 2020/5/14.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import UIKit

class HomeController: TableViewController {
    
    override func viewDidLoad() {
        
        tableViewStyle = .grouped
        super.viewDidLoad()

        setupView()

    }
    
    override func setupView() {
        
        title = "壹手黄金"
        
        setLeftBarButton()
        
        let serviceBtn = UIBarButtonItem.menuButton(self, action: #selector(goServiceController), imageName: "homeService")
        self.navigationItem.rightBarButtonItem = serviceBtn

        tableView?.register(cellWithClass: HomeBannerCell.self)

        
        NetworkManager<HomeModel>().requestModel(NMAPI.getMallHome, completion: { (response) in
            let home = response?.data
            print(home, "------")
        }) { (error) in
            if let msg = error.message {
                print(msg)
            }
        }
//        
//        NetworkManager<LiveModel>().requestListModel(NMAPI.getGoodsList, completion: { (response) in
//            let dataList = response?.dataList
//                     print(dataList, "------")
//        }) { (error) in
//               if let msg = error.message {
//                         print(msg)
//                     }
//        }
        
    }
    
    @objc func goServiceController() {

    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withClass: HomeBannerCell.self, for: indexPath)
                return cell
            default:
                return UITableViewCell()
            }
        default:
            return UITableViewCell()
        }
    }
    
}
