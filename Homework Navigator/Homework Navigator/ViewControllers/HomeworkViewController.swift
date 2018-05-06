//
//  HomeworkViewController.swift
//  Homework Navigator
//
//  Created by Colin Hoffman on 5/5/18.
//  Copyright © 2018 Hoffman Express. All rights reserved.
//  This is your work zone. each of these delegate methods is required to make the table view work.

import UIKit

class HomeworkCell: UITableViewCell {
    @IBOutlet weak var homeworkLabel: UILabel!
    @IBOutlet weak var dueDateLabel: UILabel!
}

class HomeworkViewController: UIViewController
    ,UITableViewDelegate,UITableViewDataSource
{
    
    @IBOutlet weak var homeworkTableView: UITableView!
    
        let homeworkArray = [[("4-12", "Sudoku"), ("5-1", "LZW")],[("4-22", "Python"), ("5-1", "Prolog"), ("5-4", "Racket")],[("4-20", "Paper/Presentation"), ("5-3", "Cache Quiz"), ("5-3", "Networking Quiz")],[("3-17", "HW3"), ("4-1", "HW4"), ("4-7", "HW5"), ("4-14", "HW6"), ("4-21", "HW7"), ("5-1", "Final Project")]]
    
    let classesArray = ["CSCI 340", "CSCI 333", "CSCI 355", "CSCI 423"]
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return classesArray.count;
        }
    
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            guard classesArray.indices ~= section else {
                print("No section title for this section")
                return nil
            }
            
            return classesArray[section]
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return homeworkArray[section].count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell  = homeworkTableView.dequeueReusableCell(withIdentifier: "homeworkCell", for: indexPath) as! HomeworkCell
            
            cell.dueDateLabel.text = homeworkArray[indexPath.section][indexPath.row].0
            cell.homeworkLabel.text = homeworkArray[indexPath.section][indexPath.row].1

            return cell
        }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            homeworkTableView.delegate = self
            homeworkTableView.dataSource = self

        }
        
        override func viewWillAppear(_ animated: Bool)
        {
            self.homeworkTableView.reloadData()
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

}
