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
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var assignmentNameLabel: UILabel!
}
class DashboardVIewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let fiveAssignments = getNextFive()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fiveAssignments.count
    }
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let assignmentCell = tableView.dequeueReusableCell(withIdentifier: "upcomingCell" , for: indexPath) as! AssignmentCell
        assignmentCell.assignmentNameLabel.text = fiveAssignments[indexPath.row].name
        assignmentCell.dateLabel.text = String(describing: fiveAssignments[indexPath.row].dueDate)
        return assignmentCell
    }
    static func getNextFive()->[Assignment]{
        let allAssignments = RealmQuery.getAllHomework()?.sorted(by: { ($0.dueDate < $1.dueDate)})
        var topFive : [Assignment] = []
        var i = 0
        while (i<5 && i<allAssignments!.count){
            topFive.append(allAssignments![i])
            i = i+1
        }
        return topFive
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.reloadData()
        nameLabel.text = User.shared.name

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
