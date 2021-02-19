//
//  MaskViewController.swift
//  OffscreenRenderingDemo
//
//  Created by 侯逸仙 on 2021/2/19.
//

import UIKit

class MaskViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let label1 = UILabel(frame: CGRect(x: 0, y: 50, width: 300, height: 100))
        label1.textColor = .red
        label1.numberOfLines = 0
        label1.text = "view使用最简单的mask就会触发离屏渲染"
        let view1Frame = CGRect(x: 0, y: 150, width: 100, height: 100)
        let layerFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
        let view1 = UIView(frame: view1Frame)
        view1.backgroundColor = .red
        let path = UIBezierPath(roundedRect: layerFrame, cornerRadius: 40)
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        view1.layer.mask = maskLayer
        view.addSubview(label1)
        view.addSubview(view1)
    }
}
