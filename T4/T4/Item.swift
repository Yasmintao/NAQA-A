//
//  Item.swift
//  T4
//
//  Created by Noura Alqahtani on 28/11/2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
