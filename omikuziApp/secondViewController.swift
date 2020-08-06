//
//  secondViewController.swift
//  omikuziApp
//
//  Created by USER on 2020/07/18.
//  Copyright © 2020 jp.go. All rights reserved.
//

import Foundation
import UIKit

class secondViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var nameNil: UILabel!
    @IBOutlet weak var ageNil: UILabel!
    @IBOutlet weak var segmentedButton: UISegmentedControl!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "toThird" {
                   let nextview = segue.destination as! ViewController
                   
                   nextview.oString = nameText.text!
            nextview.aString = ageText.text!
               }
    }
   
    func name(){
        var w = nameText.text!
        var strW = String(w)
        
        if strW == "" {
            nameNil.text = "名前を入力してください"
            nameNil.isHidden = false
          
            return
        }else{
            nameNil.isHidden = true
        }
    }
    
    func age(){
        let i = ageText.text!
        var intI = Int(i)
        if intI == nil {
            ageNil.text = "整数を入力してください"
            ageNil.isHidden = false
            return
        }else{
            ageNil.isHidden = true
        }
    }
    
    func stopSegue(){
        var nameT = nameText.text
        var ageT = ageText.text!
    
        if nameT  == "" || ageT == ""{
          return
        }else{
            self.performSegue(withIdentifier: "toThird", sender: nil)

        }
    }
    
    @IBAction func resultButton(_ sender: Any) {
        var nameT = nameText.text
        var ageT = ageText.text!
         var segmentIndex = segmentedButton.selectedSegmentIndex
        name()
        age()
        stopSegue()
        
    }
    
    @IBAction func segmentButton(_ sender: Any) {
        name()
        age()
        
    }
    //「名前」＋「年齢」が記入している場合遷移を始める

       
    
}

