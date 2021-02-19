//
//  ShouldRasterizeViewController.swift
//  OffscreenRenderingDemo
//
//  Created by 侯逸仙 on 2021/2/19.
//

import UIKit

class ShouldRasterizeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let label1 = UILabel(frame: CGRect(x: 0, y: 50, width: 300, height: 100))
        label1.textColor = .red
        label1.numberOfLines = 0
        label1.text = "普通的一个view，shouldRasterize为false不会触发离屏渲染"
        let view1Frame = CGRect(x: 0, y: 150, width: 100, height: 100)
        let view1 = UIView(frame: view1Frame)
        view1.backgroundColor = .red
        view.addSubview(label1)
        view.addSubview(view1)

        // 打开group opacity会触发离屏渲染

        let label2 = UILabel(frame: CGRect(x: 0, y: 300, width: 300, height: 100))
        label2.textColor = .red
        label2.numberOfLines = 0
        label2.text = "普通的一个view，shouldRasterize为true时反而会触发一次离屏渲染，所以要注意使用"
        let view2Frame = CGRect(x: 0, y: 400, width: 100, height: 100)
        let view2 = UIView(frame: view2Frame)
        view2.backgroundColor = .red
        view2.layer.shouldRasterize = true
        view.addSubview(label2)
        view.addSubview(view2)
    }
}
