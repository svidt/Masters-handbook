//
//  Item.swift
//  Masters handbook
//
//  Created by Kristian Emil on 21/01/2024.
//

import Foundation
import SwiftData

@Model
class Item {
    
    @Attribute
    var name: String = "Name"
    
    init(name: String) {
        self.name = name
    }
}
