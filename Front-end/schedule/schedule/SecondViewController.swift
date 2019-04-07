//
//  SecondViewController.swift
//  schedule
//
//  Created by 金叶 on 2019/4/6.
//  Copyright © 2019 Yejin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var courses: UITextView!
    @IBOutlet weak var listcourse: UIButton!
    @IBOutlet weak var coursename: UITextField!
    var theText:String!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if (segue!.identifier == "ViewController") {
            var svc = segue!.destination as! SecondViewController;
            
             //svc.theText =  .text
            
        }
    }
    
    @IBAction func listcourse(_ sender: Any) {
        if(theText=="Biology"){
            courses.text="Biology"
        }
        else if(theText == "Chemistry"){
            courses.text="Chemistry"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
