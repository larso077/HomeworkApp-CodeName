//
//  Profile.swift
//  Homework Navigator
//
//  Created by Colin Hoffman on 5/3/18.
//  Copyright © 2018 Hoffman Express. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController
{

    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var LocalUserEmail: UILabel!
    
    @IBOutlet weak var Class1: UILabel!
    @IBOutlet weak var Class2: UILabel!
    @IBOutlet weak var Class3: UILabel!
    @IBOutlet weak var Class4: UILabel!
    @IBOutlet weak var Class5: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        UserName.text = "Colin Hoffman"
        LocalUserEmail.text = "hoffm064@rangers.uwp.edu"
        
        Class1.text = "CSCI 333 - Programming Languages"
        Class2.text = "CSCI 340 - Data Structures"
        Class3.text = "CSCI 355 - Computer Archetecture"
        Class4.text = "CSCI 423 - Mobile Development 2"
        Class5.text = ""
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
}
