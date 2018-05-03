//
//  HomeworkViewController.swift
//  Homework Navigator
//
//  Created by Derrek Larson on 4/24/18.
//  Copyright © 2018 Hoffman Express. All rights reserved.
//  This is your work zone. each of these delegate methods is required to make the table view work.

import UIKit

class HomeworkViewController: UIViewController
//    ,UITableViewDelegate,UITableViewDataSource
{
//    //this method should return the number of data you wish to represent in your tableview separated by section.
//    //examples of this would be return numberOfAssignmentsInOneClass, with a case switch on the section int
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 0
//    }
//    // this one gives you a tableview cell at each row, usually grab the object from your array at objectArray[indexPath], use data
//    //  from that object to fill in the labels and stuff in your tableviewcell
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        //customize this, this is only to eliminate errors.
//        let tableviewcell = UITableViewCell()
//        return tableviewcell
//    }
//    // this is how
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    
    //put any data initialization here
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // add a viewWillAppear method if you need to do something every time this view comes up. should autofill

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
