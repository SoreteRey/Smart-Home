//
//  Device.swift
//  Smart-Home-Project
//
//  Created by Sebastian Guiscardo on 2/15/23.
//

import Foundation

class Device: Codable {
    
    let name: String
    var isON: Bool
    
    init(name: String, isON: Bool = false) {
        self.name = name
        self.isON = isON
    }
}//end of class


