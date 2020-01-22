//
//  FirstView.swift
//  kopuro
//
//  Created by 坂本雅大 on 2020/01/19.
//  Copyright © 2020 坂本雅大. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    @State var posts: [Post] = []
    var body: some View {
        NavigationView{
            List (posts) { post in
                NavigationLink (destination: PostDetailView(post: post)) {
                    Text(post.title)
                }
            }
            .navigationBarTitle("トップ", displayMode: .inline)
            .padding(.leading)
            
        }        .onAppear {
            NetworkManager.featchPosts { error, posts in
                if let error = error {
                    print(error)
                    return
                }
                self.posts = posts
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
