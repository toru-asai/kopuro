//
//  FirstView.swift
//  kopuro
//
//  Created by 坂本雅大 on 2020/01/19.
//  Copyright © 2020 坂本雅大. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("")
                Image(systemName: "1.square.fill")
            }
            .navigationBarTitle("トップ", displayMode: .inline)
            .padding(.leading)
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
