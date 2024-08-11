//
//  StoryView.swift
//  insta-Swift-UI
//
//  Created by Madhu on 28/07/24.
//

import SwiftUI

struct StoryView : View {
    let user: User
    
    var body: some View {
        VStack {
            VStack {
                Image(user.image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
            }
            .overlay{
                Circle()
                    .stroke(
                        LinearGradient(
                            colors: [.red, .orange, .red, .orange, .orange],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ),
                        lineWidth: 2.3
                    )
                    .frame(width: 70, height: 70)
            }
            .frame(width: 72, height: 72)
            
            if user.name == "Your story" {
                Image("Plusbtn")
                    .resizable()
                    .frame(width: 24,height: 24)
                    .overlay{
                        Circle()
                            .stroke(
                                LinearGradient(
                                    colors: [.white],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                ),
                                lineWidth: 2.3
                            )
                            .frame(width: 24, height: 24)
                    }
                    .padding(.leading, 50)
                    .padding(.top, -30)
            }
            
            Text(user.name)
                .font(.caption2)
                .padding(.top, user.name == "Your story" ? -10 : -6)        
        }
    }
}

#Preview {
    StoryView(user: User.sampleData[0])
}
