//
//  HeaderView.swift
//  insta-Swift-UI
//
//  Created by Madhu on 28/07/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            Image("Instagram Logo")
                .resizable()
                .frame(width: 120, height: 35)
                .scaledToFit()
            
            Spacer()
            
            HStack(spacing: 15){
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
                    Image("Messenger")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 28,height: 28)
                }
            }
        }
        .padding()
    }
}

#Preview {
    HeaderView()
}
