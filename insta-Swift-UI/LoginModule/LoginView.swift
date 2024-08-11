//
//  ContentView.swift
//  insta-Swift-UI
//
//  Created by iOS on 13/07/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Spacer()
                Image("Instagram Logo")
                    .resizable()
                    .frame(width: 182, height: 49)
                    .padding(.bottom)
                
                VStack(spacing: 15) {
                    TextField("Username ", text: $username)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                .padding(.top, 30)
                
                HStack{
                    Spacer()
                    Button(action: {
                        print("Forgot password?")
                    }) {
                        Text("Forgot password?")
                            .foregroundColor(.blue)
                    }
                    .padding(.top, 10)
                }
                
                Button(action: {
                    path.append("HomeView")
                }) {
                    Text("Log in")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(5)
                }
                .padding(.top, 20)
                
                
                Button(action: {
                    path.append("FacebookView")
                }) {
                    HStack {
                        Image(systemName: "f.circle.fill")
                            .foregroundColor(.blue)
                        Text("Log in with Facebook")
                            .foregroundColor(.black)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .cornerRadius(5)
                    .padding(.horizontal, 20)
                }
                
                
                HStack {
                    Rectangle()
                        .fill(Color(UIColor.systemGray5))
                        .frame(height: 1)
                    Text("OR")
                    Rectangle()
                        .fill(Color(UIColor.systemGray5))
                        .frame(height: 1)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                    Button(action: {
                    }) {
                        Text("Sign up.")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.bottom, 20)
            }
            .padding()
            .navigationDestination(for: String.self) { view in
                if view == "HomeView" {
                    BottomView()
                }else if view == "FacebookView"{
                    FacebookLoginView()
                }
            }
        }       
    }
}

#Preview {
    LoginView()
}


