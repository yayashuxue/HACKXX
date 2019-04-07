//
//  ViewController.swift
//  schedule
//
//  Created by 金叶 on 2019/4/6.
//  Copyright © 2019 Yejin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var GEreq: UITextView!
    @IBOutlet weak var Text: UILabel!
    @IBOutlet weak var Plus: UIButton!
    @IBOutlet weak var Courselist: UIPickerView!
    @IBOutlet weak var biology: UILabel!
    @IBOutlet weak var minorlist: UIPickerView!
    @IBOutlet weak var GEshow: UIPickerView!
    
    
    @IBOutlet weak var minor: UILabel!
    let courselist = ["Biology","Chemistry", "Computer Science"]
    let inorlist = ["Education studies", "Economics","Data Science"]
    let college = ["Warren College","Revelle College", "Marshall College","Muir College", "Sixth College", "ERC College"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
return 1
        
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == Courselist{
            return courselist[row]
        }
       else if pickerView == minorlist{
            return inorlist[row]
        }
        else if pickerView == GEshow{
            return college[row]
        }
        else{
            return nil
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == Courselist{
                return courselist.count
        }
        
         else if pickerView == minorlist{
         return inorlist.count
        }
        else if pickerView == GEshow{
            return college.count
        }
        else{
            return 0
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == Courselist{
        biology.text = courselist[row]
        }
        else if pickerView == minorlist{
        minor.text = inorlist[row]
        }
        else if pickerView == GEshow{
            GEreq.text = college[row]
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Plus(_ sender: Any) {
      
        biology.text="Biology"
            
    
      
    }
    
   

}



