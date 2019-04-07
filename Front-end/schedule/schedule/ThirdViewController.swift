//
//  ThirdViewController.swift
//  schedule
//
//  Created by 金叶 on 2019/4/7.
//  Copyright © 2019 Yejin. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    let courseNameArr = ["BICD 100","BILD 4", "Econ 7", "CSE12"]
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var firstcourse: UITextView!
    
    @IBOutlet weak var finished: UIButton!
    var searchedCourse = [String]()
    var searching = false
   
    @IBOutlet weak var countrySearch: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func finished(_ sender: Any) {
         let joined = searchedCourse.joined(separator:",")
        firstcourse.text = joined
        firstcourse.backgroundColor = UIColor .red
        firstcourse.textColor = UIColor.white
        
    }
}


    extension ThirdViewController: UITableViewDelegate,UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if searching{
              return  searchedCourse.count
            }else{
            return courseNameArr.count
            }
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            if searching{
                cell?.textLabel?.text = searchedCourse[indexPath.row]
            }
            else{
                cell?.textLabel?.text = courseNameArr[indexPath.row]
            }
            
            return cell!
    }

}

extension ThirdViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchedCourse =  courseNameArr.filter({$0.prefix(searchText.count) == searchText})
        searching = true
        tblView.reloadData()
    }

func searchBarCancelButtonClicked(_searchBar:UISearchBar){
     searching = false
     searchBar.text = ""
    tblView.reloadData()
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



