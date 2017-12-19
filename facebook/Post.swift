//
//  Post.swift
//  facebook
//
//  Created by Crunch Cubes on 12/9/17.
//  Copyright © 2017 Crunch Cubes. All rights reserved.
//

import Foundation

class Post: SafeJsonObject {
    var name: String?
    var profileImageName: String?
    var statusText: String?
    var statusImageName: String?
    var numLikes: NSNumber?
    var numComments: NSNumber?
    
    var location: Location?
    
    override func setValue(_ value: Any?, forKey key: String) {
        if key == "location" {
            location = Location()
            location?.setValuesForKeys(value as! [String: AnyObject])
        } else {
            super.setValue(value, forKey: key)
        }
    }
}
