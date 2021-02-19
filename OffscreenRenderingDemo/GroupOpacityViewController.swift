//
//  GroupOpacityViewController.swift
//  OffscreenRenderingDemo
//
//  Created by 侯逸仙 on 2021/2/19.
//

import UIKit

class GroupOpacityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let label1 = UILabel(frame: CGRect(x: 0, y: 50, width: 300, height: 100))
        label1.textColor = .red
        label1.numberOfLines = 0
        label1.text = "view的layer的opacity不为1时，view的layer有两个有颜色的sublayer，关闭group opacity不会触发离屏渲染"
        let view1Frame = CGRect(x: 0, y: 150, width: 100, height: 100)
        let view1LayerFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
        let view1 = UIView(frame: view1Frame)
        let view1Layer1 = CALayer()
        view1Layer1.frame = view1LayerFrame
        view1Layer1.backgroundColor = UIColor.red.cgColor
        let view1Layer2 = CALayer()
        view1Layer2.frame = view1LayerFrame
        view1Layer2.backgroundColor = UIColor.blue.cgColor
        view1.layer.addSublayer(view1Layer1)
        view1.layer.addSublayer(view1Layer2)
        view1.layer.opacity = 0.6
        view1.layer.allowsGroupOpacity = false
        view.addSubview(label1)
        view.addSubview(view1)

        // 打开group opacity会触发离屏渲染

        let label2 = UILabel(frame: CGRect(x: 0, y: 300, width: 300, height: 100))
        label2.textColor = .red
        label2.numberOfLines = 0
        label2.text = "view的layer的opacity不为1时，view的layer有两个有颜色的sublayer，打开group opacity（默认就是打开）会触发离屏渲染"
        let view2Frame = CGRect(x: 0, y: 400, width: 100, height: 100)
        let view2LayerFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
        let view2 = UIView(frame: view2Frame)
        let view2Layer1 = CALayer()
        view2Layer1.frame = view2LayerFrame
        view2Layer1.backgroundColor = UIColor.red.cgColor
        let view2Layer2 = CALayer()
        view2Layer2.frame = view2LayerFrame
        view2Layer2.backgroundColor = UIColor.blue.cgColor
        view2.layer.addSublayer(view2Layer1)
        view2.layer.addSublayer(view2Layer2)
        view2.layer.opacity = 0.6
        view2.layer.allowsGroupOpacity = true
        view.addSubview(label2)
        view.addSubview(view2)
    }
}
