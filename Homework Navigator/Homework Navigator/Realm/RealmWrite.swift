//
//  RealmWrite.swift
//  Homework Navigator
//
//  Created by Derrek Larson on 4/24/18.
//  Copyright © 2018 Hoffman Express. All rights reserved.
//  I will build this class to write objects to the realm database
//  sike i have it functional. use as follows:
// `RealmWrite.save(myHomeworkArray)`
//  only put homework together in an array if they're for the same course. CS333 homework shouldnt be saved with CS425 homework.

import Foundation
import RealmSwift

class RealmWrite{
    static func save(homeworkPerClass: HomeworkPerClass){
        do{
            let realm = try Realm()
            try realm.write{
                realm.create(HomeworkPerClass.self, value: homeworkPerClass, update: true )
            }
        }   catch{
            print("unable to save homework to realm")
    }
    }
}
