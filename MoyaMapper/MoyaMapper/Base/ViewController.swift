//
//  ViewController.swift
//  GoldChange
//
//  Created by Norman Sun on 2020/4/3.
//  Copyright © 2020 Norman Sun. All rights reserved.
//

import UIKit
import MBProgressHUD
import SnapKit
import SwifterSwift
import Then

class ViewController: UIViewController {

    var hud: MBProgressHUD?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    func setupView() { }
    
    
}


// MARK: - leftBarButtonItem
extension ViewController {

    func setLeftBarButton() {
        let mineBtn = UIBarButtonItem.menuButton(self, action: #selector(goMineController), imageName: "mineNoLoginIcon")
        self.navigationItem.leftBarButtonItem = mineBtn
    }

    @objc func goMineController() {
        let controller = ViewController()
        controller.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(controller, animated: true)
    }

}

// MARK: - MBProgressHUD、弹出框
extension ViewController {

    /// 显示 Loading (默认显示加载中...)
    func showLoading(text: String = "加载中...", isShow: Bool) -> Void {
        DispatchQueue.main.async {
            if let theHud =  self.hud {
                theHud.hide(animated: true)
            }
            if isShow {
                self.hud = MBProgressHUD.showAdded(to: self.view, animated: true)
                self.hud?.backgroundView.style = .solidColor
                self.hud?.bezelView.color = UIColor(white: 0, alpha: 1)
                self.hud?.contentColor = UIColor(white: 1, alpha: 1)
                self.hud?.label.text = text
                self.hud?.mode = .indeterminate
            }
        }
    }
    
    /// 显示提示消息
    func showMessage(msg: String) -> Void {
        if msg.isEmpty {
            return
        }
        let toastHud = MBProgressHUD.showAdded(to: self.view, animated: true)
        toastHud.mode = .text
        toastHud.contentColor = UIColor(white: 1, alpha: 1)
        toastHud.detailsLabel.text = msg
        toastHud.backgroundView.style = .solidColor
        toastHud.bezelView.color = UIColor(white: 0, alpha: 1)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            toastHud.hide(animated: true)
        }
    }
    
}
