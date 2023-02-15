//
//  Device.swift
//  Smart-Home-Project
//
//  Created by Sebastian Guiscardo on 2/15/23.
//

import Foundation

class Device: Codable {
    
    let text: String
    var isON: Bool
    
    init(text: String, isON: Bool = false) {
        self.text = text
        self.isON = isON
    }
}//end of class


