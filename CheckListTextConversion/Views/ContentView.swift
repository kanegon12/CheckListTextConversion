//
//  ContentView.swift
//  CheckListTextConversion
//
//  Created by 金子朝紀 on 2026/06/11.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    // sortでorder順に並べる order:.reverseでorderの数字が大きい順に並べる
    @Query(sort: \CheckListTemplate.order, order: .reverse) private var templates: [CheckListTemplate]
    
    var body: some View {
        // UIKitでいうUINavigationController
        NavigationStack {
            List(templates) { template in
                Text(template.name)
            }
            // barに表示されるタイトル
            .navigationTitle("テンプレート一覧")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        // テスト用のテンプレート追加
                        let newTemplate = CheckListTemplate(name: "テスト", order: templates.count)
                        modelContext.insert(newTemplate)
                    } label: {
                        // plusは＋アイコン
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    
}

#Preview {
    ContentView()

}
