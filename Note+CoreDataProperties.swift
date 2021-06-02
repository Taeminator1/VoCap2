//
//  Note+CoreDataProperties.swift
//  VoCap
//
//  Created by 윤태민 on 6/2/21.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var color: Int32          // RGB color index
    @NSManaged public var defs: [String]
    @NSManaged public var id: UUID?
    @NSManaged public var isOKs: [Bool]         // if memorized or not
    @NSManaged public var memo: String?
    @NSManaged public var mCnt: Int16           // count of memorized list
    @NSManaged public var order: Int16
    @NSManaged public var terms: [String]
    @NSManaged public var title: String?
    @NSManaged public var tCnt: Int16           // total count of list

}

extension Note : Identifiable {

}
