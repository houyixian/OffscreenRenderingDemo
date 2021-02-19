//
//  CornerRadiusViewController.swift
//  OffscreenRenderingDemo
//
//  Created by 侯逸仙 on 2021/2/18.
//

import UIKit

class CornerRadiusViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let label1 = UILabel(frame: CGRect(x: 0, y: 60, width: 300, height: 110))
        label1.textColor = .red
        label1.numberOfLines = 0
        label1.text = "普通view设置圆角和masksToBounds为true不会触发离屏渲染，但网上有些资料说这样子会触发离屏渲染，我猜是高版本iOS系统的优化"
        let view1 = UIView(frame: CGRect(x: 0, y: 170, width: 100, height: 100))
        view1.backgroundColor = .red
        view1.layer.cornerRadius = 10
        view1.layer.masksToBounds = true
        view.addSubview(label1)
        view.addSubview(view1)
    }

}
