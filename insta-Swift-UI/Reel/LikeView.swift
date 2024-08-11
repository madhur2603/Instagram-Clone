//
//  LikeView.swift
//  insta-Swift-UI
//
//  Created by Madhu on 04/08/24.
//

import SwiftUI

struct LikeView: View {
    var body: some View {
        VStack(spacing: 15) {

            Button(action: {
                  print("button pressed")

                }) {
                    Image("Like")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 28,height: 28)
                }
            
            Text("16.6k")
                .font(.footnote)
            
            Button(action: {
                  print("button pressed")

                }) {
                    Image("Comment")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 28,height: 28)
                }
            
            Text("1.6k")
                .font(.footnote)
            
            Button(action: {
                  print("button pressed")

                }) {
                    Image("Share")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 28,height: 28)
                }
            
            Text("12.6k")
                .font(.footnote)
            
            Button(action: {
                  print("button pressed")

                }) {
                    Image("dots")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 20, height: 24)
                }
        }
        .padding(.trailing)
        .padding(.bottom, 50)
    }
}

#Preview {
    LikeView()
}
