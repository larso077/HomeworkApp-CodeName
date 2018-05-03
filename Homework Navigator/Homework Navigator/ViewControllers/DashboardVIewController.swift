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
        
        
//        let homework = homeworkArray[indexPath.row]
        
        cell.classLabel.text = homeworkArray[indexPath.row].1
        cell.homeworkLabel.text = homeworkArray[indexPath.row].0
//        cell.detailTextLabel?.text = homeworkArray[indexPath.row].0
        return cell
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
//    let fiveAssignments = getNextFive()
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return fiveAssignments.count
//    }
//
//    @IBOutlet weak var tableView: UITableView!
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let assignmentCell = tableView.dequeueReusableCell(withIdentifier: "upcomingCell" , for: indexPath) as! AssignmentCell
//        assignmentCell.assignmentNameLabel.text = fiveAssignments[indexPath.row].name
//        assignmentCell.dateLabel.text = String(describing: fiveAssignments[indexPath.row].dueDate)
//        return assignmentCell
//    }
//    static func getNextFive()->[Assignment]{
//        let allAssignments = RealmQuery.getAllHomework()?.sorted(by: { ($0.dueDate < $1.dueDate)})
//        var topFive : [Assignment] = []
//        var i = 0
//        while (i<5 && i<allAssignments!.count){
//            topFive.append(allAssignments![i])
//            i = i+1
//        }
//        return topFive
//    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewFirstFive.delegate = self
        tableViewFirstFive.dataSource = self
//        tableView.delegate = self
//        tableView.dataSource = self
//        self.tableView.reloadData()
//        nameLabel.text = User.shared.name
        
        nameLabel.text = "Colin"
        
//        for index 1...5{
//            let assigmentArray = [Assignment(name: "1", dueDate: Date.init(), descriptionLocation: "descLoc1", turnInLocation: "turninLoc1", Assignment(name: "2", dueDate: Date.init(), descriptionLocation: "descLoc2", turnInLocation: "turninLoc2")]
//        }
        
//        init(name: String, dueDate: Date, descriptionLocation: String, turnInLocation: String)
//        {
//            self.name = name
//            self.dueDate = dueDate
//            self.descriptionLocation = descriptionLocation
//            self.turnInLocation = turnInLocation
//        }

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
                self.tableViewFirstFive.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
