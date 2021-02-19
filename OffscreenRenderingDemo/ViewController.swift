//
//  ViewController.swift
//  OffscreenRenderingDemo
//
//  Created by 侯逸仙 on 2021/2/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        navigationItem.title = "打开Color Off-screen Rendered观察"
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "圆角"
        case 1:
            cell.textLabel?.text = "阴影"
        case 2:
            cell.textLabel?.text = "group opacity"
        case 3:
            cell.textLabel?.text = "mask"
        case 4:
            cell.textLabel?.text = "UIBlurEffect"
        case 5:
            cell.textLabel?.text = "shouldRasterize"
        case 6:
            cell.textLabel?.text = "edgeAntialiasing"
        default:
            cell.textLabel?.text = "未完待续"
        }
        return cell
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = CornerRadiusViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = ShadowViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = GroupOpacityViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = MaskViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = UIBlurEffectViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 5:
            let vc = ShouldRasterizeViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 6:
            let vc = EdgeAntialiasingViewController()
            navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
    }
}
