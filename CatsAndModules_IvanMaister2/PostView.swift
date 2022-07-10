//
//  PostView.swift
//  CatsApp
//
//  Created by Master on 14.06.2022.
//

import SwiftUI
import Networking

struct PostView: View {
    
    private let post: CatPost
    
    init(post: CatPost) {
        self.post = post
    }
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: post.url)!,
                       placeholder: { Text("Loading ...") },
                       image: { Image(uiImage: $0).resizable() })
                .frame(height:160)
                .clipped()
            Text("Name: \(RandomNameGenerator.getName())")
                .font(.title2)
                .foregroundColor(.black)
                .frame(maxWidth: CGFloat.infinity, alignment: .leading)
                
            
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 16)
        .cornerRadius(8)
        .background(Color.white)
    }
    
    
}

struct PostView_Previews: PreviewProvider {
    
    static var previews: some View {
        EmptyView()
//        PostView(post: Post.post)
//            .previewLayout(.fixed(width: 300, height: 400))
    }
}
