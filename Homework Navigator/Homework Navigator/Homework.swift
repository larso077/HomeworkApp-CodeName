//
//  Homework.swift
//  Homework Navigator
//
//  Created by Derrek Larson on 4/24/18.
//  Copyright © 2018 Hoffman Express. All rights reserved.
//

import Foundation
import RealmSwift

class HomeworkPerClass: Object {
    var courseId: String = ""
    var currentAssignments: [Assignment] = []
    override static func primaryKey() -> String {
        return "courseId"
    }
}

