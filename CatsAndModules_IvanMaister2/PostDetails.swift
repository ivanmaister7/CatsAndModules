//
//  PostDetails.swift
//  CatsApp
//
//  Created by Master on 14.06.2022.
//

import SwiftUI
import Networking

struct PostDetails: View {
    let post: CatPost
    init(post:CatPost){
        self.post = post
    }
    var body: some View {
            VStack {
                AsyncImage(url: URL(string: post.url)!,
                           placeholder: { Text("Loading ...") },
                           image: { Image(uiImage: $0).resizable() })
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .cornerRadius(8)
            .background(Color.white)
    }
}

struct PostDetails_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
        //PostDetails(post: CatPost.post)
    }
}
