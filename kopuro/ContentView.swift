//
//  ContentView.swift
//  kopuro
//
//  Created by 坂本雅大 on 2020/01/19.
//  Copyright © 2020 坂本雅大. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FirstView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("トップ")
                }
            SecondView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("カテゴリ")
                }
            ThirdView()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("カレンダー")
                }
            
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
