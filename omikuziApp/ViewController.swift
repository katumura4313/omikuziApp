//
//  ViewController.swift
//  omikuziApp
//
//  Created by USER on 2020/07/17.
//  Copyright © 2020 jp.go. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var resultLabel: UILabel!
    
     var oString = ""
    var aString = ""
    
    func result(name:String, age:String) -> String{
   
     let no = "\(name)\(age)"
          return no

   }

      override func viewDidLoad() {
          super.viewDidLoad()
        
//        resultLabel.text = result(name:"\(oString)さん")
//
        resultLabel.text = result(name:"\(oString)さん", age:"(\(aString))の占い結果は・・・")
      }
    @IBAction func restartButton(_ segue:secondViewController) {
        self.performSegue(withIdentifier: "toRestart", sender: nil)
        
    }
    
    



}
