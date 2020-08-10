//
//  ViewController.swift
//  CuckooSample
//
//  Created by yaiwamoto on 10/08/2020.
//  Copyright © 2020 Yasutaka Iwamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func notify(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("some"), object: nil)
    }
    
        @IBAction func showAlert(_ sender: Any) {
        print("hello")
        UIAlertController.showOkAlert(vc: self, title: "hoge", message: "fuga")
    }
}

extension UIAlertController {
    static func showOkAlert(vc: UIViewController, title: String, message: String) {
        let alert = UIAlertController(
            title          : title,
            message        : message,
            preferredStyle : .alert
        )
        alert.addAction(UIAlertAction(
            title   : "ok",
            style   : .default,
            handler : nil
        ))
        vc.present(alert, animated: true, completion: nil)
    }
}
