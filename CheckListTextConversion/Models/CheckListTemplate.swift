//
//  CheckListTemplate.swift
//  CheckListTextConversion
//
//  Created by 金子朝紀 on 2026/06/11.
//

import Foundation
import SwiftData

@Model
final class CheckListTemplate {
    var name: String
    var order: Int
    
    init(name: String, order: Int) {
        self.name = name
        self.order = order
    }
}
