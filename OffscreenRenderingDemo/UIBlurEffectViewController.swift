//
//  UIBlurEffectViewController.swift
//  OffscreenRenderingDemo
//
//  Created by 侯逸仙 on 2021/2/19.
//

import UIKit

class UIBlurEffectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let label1Frame = CGRect(x: 0, y: 50, width: 300, height: 100)
        let label1Bounds = CGRect(x: 0, y: 0, width: 300, height: 100)
        let label1 = UILabel(frame: label1Frame)
        label1.textColor = .red
        label1.numberOfLines = 0
        label1.text = "使用UIBlurEffectView也会触发离屏渲染"
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = label1Bounds
        blurView.layer.masksToBounds = true
        blurView.alpha = 0.7
        view.addSubview(label1)
        label1.addSubview(blurView)
    }
}
