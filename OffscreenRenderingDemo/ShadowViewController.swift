//
//  ShadowViewController.swift
//  OffscreenRenderingDemo
//
//  Created by 侯逸仙 on 2021/2/18.
//

import UIKit

class ShadowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let label1 = UILabel(frame: CGRect(x: 0, y: 50, width: 300, height: 80))
        label1.textColor = .red
        label1.numberOfLines = 0
        label1.text = "view使用最简单方式设置阴影会触发离屏渲染"
        let view1 = UIView(frame: CGRect(x: 0, y: 150, width: 100, height: 100))
        view1.backgroundColor = .red
        view1.layer.shadowColor = UIColor.black.cgColor
        view1.layer.shadowOffset = CGSize(width: 5, height: 5)
        view1.layer.shadowRadius = 10
        view1.layer.shadowOpacity = 1
        view.addSubview(label1)
        view.addSubview(view1)

        // 使用shadowPath不会触发离屏渲染

        let label2 = UILabel(frame: CGRect(x: 0, y: 300, width: 300, height: 80))
        label2.textColor = .red
        label2.numberOfLines = 0
        label2.text = "view使用最简单方式设置阴影+shadowPath不会触发离屏渲染"
        let view2 = UIView(frame: CGRect(x: 0, y: 400, width: 100, height: 100))
        view2.backgroundColor = .red
        view2.layer.shadowColor = UIColor.black.cgColor
        view2.layer.shadowOffset = CGSize(width: 5, height: 5)
        view2.layer.shadowRadius = 10
        view2.layer.shadowOpacity = 1
        view2.layer.shadowPath = CGPath(rect: CGRect(x: 0, y: 400, width: 100, height: 100), transform: nil)
        view.addSubview(label2)
        view.addSubview(view2)
    }

}
