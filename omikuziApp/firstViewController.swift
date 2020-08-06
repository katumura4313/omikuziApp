//
//  firstViewController.swift
//  omikuziApp
//
//  Created by USER on 2020/07/18.
//  Copyright © 2020 jp.go. All rights reserved.
//


import UIKit

class firstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func strButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "toSecond", sender: nil)
    }
}
