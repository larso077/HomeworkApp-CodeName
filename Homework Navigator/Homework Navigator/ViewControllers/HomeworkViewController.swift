//
//  HomeworkViewController.swift
//  Homework Navigator
//
//  Created by Derrek Larson on 4/24/18.
//  Copyright © 2018 Hoffman Express. All rights reserved.
//  This is your work zone. each of these delegate methods is required to make the table view work.

import UIKit


// Assignment Object. Holds two labels that show the class label and the homework assignment
class AssignmentCell: UITableViewCell {
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var homeworkLabel: UILabel!
}

class HomeworkViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{

    let homeworkArray = [("Sudoku", "CSCI 340"), ("LZW", "CSCI 340"), ("Paper/Presentation", "CSCI 355"), ("Final Project", "CSCI 423"), ("Racket", "CSCI 333"),
    ("Presentation", "ENG 204"), ("Final Report", "ENG 204"), ("Bus Quiz", "CSCI 355"),("Cache Quiz", "CSCI 355"),("Networks Quiz", "CSCI 355"),("Final Exam Quiz", "CSCI 355")]
    
    @IBOutlet weak var tableViewAll: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeworkArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableViewAll.dequeueReusableCell(withIdentifier: "allCells", for: indexPath) as! AssignmentCell
        
        
        //        let homework = homeworkArray[indexPath.row]
        
        cell.classLabel.text = homeworkArray[indexPath.row].1
        cell.homeworkLabel.text = homeworkArray[indexPath.row].0
        //        cell.detailTextLabel?.text = homeworkArray[indexPath.row].0
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        self.tableViewAll.reloadData()
    }
    //put any data initialization here
    override func viewDidLoad() {
    
    
        super.viewDidLoad()
        tableViewAll.delegate = self
        tableViewAll.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
