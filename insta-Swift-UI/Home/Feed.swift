//
//  Feed.swift
//  insta-Swift-UI
//
//  Created by Madhu on 27/07/24.
//

import SwiftUI

struct Feed: View {
    
    let post: Post
    
    var body: some View {
        VStack{
            HStack {
                Image(post.user.image)
                    .resizable()
                    .frame(width: 44, height: 44)
                    .cornerRadius(22)
                
                VStack{
                    Text(post.user.name)
                        .frame(maxWidth: .infinity,maxHeight: 24,alignment: .leading)
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .padding(.leading, 5)
                }
 
                Spacer()
                Image("dots")
                    .resizable()
                    .frame(width: 20, height: 24)
            }
            .padding(.horizontal)
            
            Image(post.image)
                .resizable()
                .frame(height: 250)

            HStack(spacing: 20){
                Button(action: {
                      print("button pressed")

                    }) {
                        Image("Like")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 24,height: 24)
                    }
                
                Button(action: {
                      print("button pressed")

                    }) {
                        Image("Comment")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 24,height: 24)
                    }
                
                Button(action: {
                      print("button pressed")

                    }) {
                        Image("Share")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 24,height: 24)
                    }
                Spacer()
                
                Button(action: {
                      print("button pressed")

                    }) {
                        Image("Save")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 24,height: 24)
                    }
                
            }
            .padding(.horizontal)
            
            VStack{
                
                Text("6,653 likes")
                    .frame(maxWidth: .infinity, maxHeight: 24,alignment: .leading)
                    .font(.footnote)
                
                Text(post.description ?? "")
                    .frame(maxWidth: .infinity,minHeight: 24,alignment: .leading)
                    .font(.footnote)
                    .padding(.vertical, -10)
                                    
                Text("3 hours ago")
                    .frame(maxWidth: .infinity, maxHeight: 24,alignment: .leading)
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            .padding(.leading)            
        }
    }
}

#Preview {
    Feed(post: Post.sampleData[0])
}
