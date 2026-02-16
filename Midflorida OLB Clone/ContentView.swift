//
//  ContentView.swift
//  Midflorida OLB Clone
//
//  Created by Israel on 6/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var loginID: String = ""
    @State private var password: String = ""
    @State private var rememberMe: Bool = false
    
    var body: some View {
        ZStack {

            Image("background") // Replace with the name of your image asset
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer().frame(height: 40)
                
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280, height: 90) 
                    .padding(.top, 30)
                
                
                Spacer().frame(height: 20)
                
                ScrollView {
                    VStack(spacing: 14) {
                        TextField("Login ID", text: $loginID)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                        
                        Spacer().frame(height: 8)
                        
                        Toggle(isOn: $rememberMe) {
                            Text("Remember Me")
                        }
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        
                        Button(action: {
                        }) {
                            Text("Login")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .cornerRadius(8)
                                .padding(.horizontal)
                                .shadow(radius: 2)
                            
                        }
                        
                        HStack {
                            Button(action: {}) {
                                Text("Forgot Login ID?")
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                            }
                            Spacer()
                            Button(action: {}) {
                                Text("Forgot Password?")
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                            }
                            Spacer()
                            Button(action: {}) {
                                Image(systemName: "faceid")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .padding(8)
                                    .background(Color.white.opacity(0.2))
                                    .clipShape(Circle())
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                Spacer(minLength: 10)
                
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Text("Contact Us")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: {}) {
                        Text("Location")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: {}) {
                        Text("Sign Up")
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                .padding(.bottom, 15)
                
                VStack(spacing: 5) {
                    HStack {
                        Button(action: {}) {
                            Text("midflorida.com")
                                .font(.footnote)
                                .foregroundColor(.white)
                                .underline()
                        }
                        Spacer(minLength: 20)
                        Button(action: {}) {
                            Text("Privacy Policy")
                                .font(.footnote)
                                .foregroundColor(.white)
                                .underline()
                        }
                    }
                    .frame(maxWidth: 300)
                    .padding(.bottom, 5)
                    
                    Text("© 2024 MIDFLORIDA Credit Union")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 15)
            }
            .padding(.top, 10)
        }
    }
}

#Preview {
    ContentView()
}
