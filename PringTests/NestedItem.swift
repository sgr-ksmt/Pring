//
//  NestedItem.swift
//  PringTests
//
//  Created by 1amageek on 2017/10/29.
//  Copyright © 2017年 Stamp Inc. All rights reserved.
//

import UIKit
import Pring
import Firebase
import FirebaseFirestore

@objcMembers
class NestedItem: Object {

    dynamic var array: [String]                     = ["nested"]
    dynamic var set: Set<String>                    = ["nested"]
    dynamic var bool: Bool                          = true
    dynamic var binary: Data                        = "nested".data(using: .utf8)!
    dynamic var url: URL                            = URL(string: "https://firebase.google.com/nested")!
    dynamic var int: Int                            = Int.max
    dynamic var float: Double                       = Double.infinity
    dynamic var date: Date                          = Date(timeIntervalSince1970: 100)
    dynamic var geoPoint: GeoPoint                  = GeoPoint(latitude: 0, longitude: 0)
    dynamic var dictionary: [AnyHashable: Any]      = ["key": "nested"]
    dynamic var string: String                      = "nested"
    dynamic var file: File                          = File(data: UIImagePNGRepresentation(TestDocument.image0())!, mimeType: .png)

    let referenceCollection: ReferenceCollection<TestDocument>  = []
    let nextedCollection: NestedCollection<NestedItem>          = []

    static func image0() -> UIImage {
        let frame: CGRect = CGRect(x: 0, y: 0, width: 100, height: 100)
        UIGraphicsBeginImageContext(frame.size)
        let context: CGContext = UIGraphicsGetCurrentContext()!
        context.setFillColor(UIColor.green.cgColor)
        context.fill(frame)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }

    static func image1() -> UIImage {
        let frame: CGRect = CGRect(x: 0, y: 0, width: 50, height: 50)
        UIGraphicsBeginImageContext(frame.size)
        let context: CGContext = UIGraphicsGetCurrentContext()!
        context.setFillColor(UIColor.green.cgColor)
        context.fill(frame)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
