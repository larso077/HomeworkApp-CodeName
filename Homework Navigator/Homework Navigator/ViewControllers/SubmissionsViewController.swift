//
//  SubmissionsViewController.swift
//  Homework Navigator
//
//  Created by Colin Hoffman on 5/6/18.
//  Copyright © 2018 Hoffman Express. All rights reserved.
//

import UIKit


class SubmissionCell: UITableViewCell {
    @IBOutlet weak var submissionLocation: UILabel!
    @IBOutlet weak var homeworkSubmissionLabel: UILabel!
    
    
}

class SubmissionsViewController: UIViewController
    ,UITableViewDelegate,UITableViewDataSource
{
    
    @IBOutlet weak var submissionTableView: UITableView!
    
    
    let homeworkArray = [[("Sub Dir", "Sudoku"), ("Sub Dir", "LZW")],[("Sub Dir", "Python"), ("Sub Dir", "Prolog"), ("Sub Dir", "Racket")],[("D2L", "Paper/Presentation"), ("D2L", "Cache Quiz"), ("D2L", "Networking Quiz")],[("GitHub", "HW3"), ("GitHub", "HW4"), ("GitHub", "HW5"), ("GitHub", "HW6"), ("GitHub", "HW7"), ("Present", "Final Project")]]
    
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
        let cell  = submissionTableView.dequeueReusableCell(withIdentifier: "submissionsCell", for: indexPath) as! SubmissionCell
        
        cell.submissionLocation.text = homeworkArray[indexPath.section][indexPath.row].0
        cell.homeworkSubmissionLabel.text = homeworkArray[indexPath.section][indexPath.row].1
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        submissionTableView.delegate = self
        submissionTableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        self.submissionTableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
