//  Derrek Larson
//  04/20/2018
//  DashboardVIewController.swift
//  Homework Navigator
//
//  Created by Derrek Larson on 4/24/18.
//  Copyright © 2018 Hoffman Express. All rights reserved.
//

import UIKit
// add descriptive label with the course number
class AssignmentCell: UITableViewCell {
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var homeworkLabel: UILabel!
}
class DashboardVIewController: UIViewController
    , UITableViewDelegate, UITableViewDataSource
{
    
    let homeworkArray = [("Sudoku", "CSCI 340"), ("LZW", "CSCI 340"), ("Paper/Presentation", "CSCI 355"), ("Final Project", "CSCI 423"), ("Racket", "CSCI 333")]
    
    @IBOutlet weak var tableViewFirstFive: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeworkArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableViewFirstFive.dequeueReusableCell(withIdentifier: "topFiveCell", for: indexPath) as! AssignmentCell
        
        cell.classLabel.text = homeworkArray[indexPath.row].1
        cell.homeworkLabel.text = homeworkArray[indexPath.row].0

        return cell
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewFirstFive.delegate = self
        tableViewFirstFive.dataSource = self
        
        nameLabel.text = "Colin"
        
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
                self.tableViewFirstFive.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
