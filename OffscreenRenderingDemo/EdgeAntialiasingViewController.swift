//
//  EdgeAntialiasingViewController.swift
//  OffscreenRenderingDemo
//
//  Created by 侯逸仙 on 2021/2/19.
//

import UIKit

class EdgeAntialiasingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let label1 = UILabel(frame: CGRect(x: 0, y: 50, width: 300, height: 130))
        label1.textColor = .red
        label1.numberOfLines = 0
        label1.text = "view的layer在最简单的场景下使用抗锯齿(allowsEdgeAntialiasing = true)不会触发离屏渲染，网上也有说会触发离屏渲染，推测也是高版本系统的优化"
        let view1Frame = CGRect(x: 50, y: 180, width: 100, height: 100)
        let view1 = UIView(frame: view1Frame)
        view1.backgroundColor = .red
        view1.layer.allowsEdgeAntialiasing = true
        view1.layer.transform = CATransform3DRotate(view1.layer.transform, CGFloat.pi / 6, 0.0, 0.0, 1.0)
        view.addSubview(label1)
        view.addSubview(view1)
    }

}
