//
//  RealmQuery.swift
//  Homework Navigator
//
//  Created by Derrek Larson on 4/24/18.
//  Copyright © 2018 Hoffman Express. All rights reserved.
//

import Foundation
import RealmSwift

class RealmQuery {
    static func getAllHomework() -> [Assignment]? {
        do {
            var assignmentArray: [Assignment] = []
            let realm = try Realm()
            let classes = Array(realm.objects(HomeworkPerClass.self))
            for HomeworkPerClass in classes {
                if User.shared.enrolledCourses.contains(HomeworkPerClass.courseId){
                assignmentArray.append(contentsOf: HomeworkPerClass.currentAssignments)
                }}
            return assignmentArray
        }
        catch {
            print("Homework Realm Machine BrOkE")
        }
        return nil
    }
    static func getHomework(courseId: String){
        
    }
}
