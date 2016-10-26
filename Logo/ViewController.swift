//
//  ViewController.swift
//  Logo
//
//  Created by techmaster on 10/26/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo_img: UIImageView!
    @IBOutlet weak var lbl_text: UILabel!
    @IBOutlet weak var lbl_name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        logo_img!.alpha = 0
        lbl_text!.alpha = 0
        lbl_name!.alpha = 0
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 3, animations: {
            self.logo_img!.alpha = 1
            }, completion: { (finished) in
                UIView.animate(withDuration: 3, animations: {
                    self.lbl_text!.center = CGPoint(x: self.logo_img!.center.x, y: 400)
                    self.lbl_text!.alpha = 1
                }, completion: { (finished) in
                        UIView.animate(withDuration: 5, animations: {
                            self.lbl_name!.center = CGPoint(x: self.logo_img!.center.x, y: 600)
                            // self.lbl_text!.alpha = 0
                            self.lbl_name!.alpha = 1
                })
            })
        })
    }
}

