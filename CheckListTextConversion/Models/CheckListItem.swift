//
//  CheckListItem.swift
//  CheckListTextConversion
//
//  Created by 金子朝紀 on 2026/06/11.
//

import Foundation
import SwiftData

enum ItemType: String, Codable, CaseIterable {
    case checkbox
    case text
    case number
}

@Model
final class CheckListItem {
    var type: ItemType
    var label: String
    var order: Int
    var unit: String?
    
    init(type: ItemType, label: String, order: Int, unit: String? = nil) {
        self.type = type
        self.label = label
        self.order = order
        self.unit = unit
    }
}
