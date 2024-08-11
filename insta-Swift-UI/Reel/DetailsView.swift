//
//  DetailsView.swift
//  insta-Swift-UI
//
//  Created by MAdhu on 04/08/24.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack(spacing: 20){

            HStack(spacing: 15){                
                Button(action: {
                    
                }) {
                    Image("Profile")
                    
                }
                
                Text("Madhu")
                    .font(.title3)
                
                Button(action: {
                    // Your action here
                }) {
                    Text("Follow")
                        .frame(width: 100, height: 30)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 10)
//                                .stroke(Color.white, lineWidth: 2)
//                        )
                }  
                Spacer()
            }
            .padding(.bottom, -10)
            .padding(.leading)
            
            Text("Test post")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            Text("10.3k likes")
                .frame(maxWidth: .infinity,maxHeight: 20 , alignment: .leading)
                .padding(.leading)
        }
        .padding(.bottom, 50)
   
    }
}

#Preview {
    DetailsView()
}
