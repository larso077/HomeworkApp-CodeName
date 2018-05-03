//
//  Homework.swift
//  Homework Navigator
//
//  Created by Derrek Larson on 4/24/18.
//  Copyright © 2018 Hoffman Express. All rights reserved.
//  defines HomeworkPerClass datatype which acts as an array of assignments that can be obtained from realm easily for
//  anyone enrolled in that class. all realm related good times are done in classes with Realm in the name.

import Foundation
import RealmSwift

class HomeworkPerClass: Object {
    var courseId: String = ""
    var currentAssignments: [Assignment] = []
   //this just defines a primary key for the object
    override static func primaryKey() -> String {
        return "courseId"
    }
}

