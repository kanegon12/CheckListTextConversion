//
//  CheckListSection.swift
//  CheckListTextConversion
//
//  Created by 金子朝紀 on 2026/06/11.
//

import Foundation
import SwiftData

@Model
final class CheckListSection {
    var name: String
    var order: Int
    var items: [CheckListItem]
    
    init(name: String, order: Int) {
        self.name = name
        self.order = order
        self.items = []
    }
    
}
