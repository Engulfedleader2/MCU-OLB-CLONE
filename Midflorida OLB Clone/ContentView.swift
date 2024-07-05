//
//  ContentView.swift
//  Midflorida OLB Clone
//
//  Created by Israel on 6/3/24.
//

import SwiftUI

struct ContentView: View {
    //first commit
    
    @State private var loginID: String = ""
    @State private var password: String = ""
    @State private var rememberMe: Bool = false
    
    var body: some View {
        ZStack {
            // Background Image
            Image("background") // Replace with the name of your image asset
                .resizable()
               // .aspectRatio(contentMode: .fill) // Fill the entire available space
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer().frame(height: 40)
                
                // Logo at top
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 100)
                    .padding(.top, 40)
                
                Spacer().frame(height: 30)
                
                // ScrollView to allow scrolling if needed
                ScrollView {
                    VStack(spacing: 16) {
                        // Login text field
                        TextField("Login ID", text: $loginID)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)

                        
                        // Password text field
                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                        
                        // Remember me toggle
                        Toggle(isOn: $rememberMe) {
                            Text("Remember Me")
                        }
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        
                        // Login Button
                        Button(action: {
                            // Login Action here
                        }) {
                            Text("Login")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .border(Color.black)
                                .background(Color.blue)
                                .cornerRadius(8)
                                .padding(.horizontal)
                                
                        }
                        
                        // Face ID login button and forgot buttons
                        HStack {
                            Button(action: {
                                // Forgot Login ID action here
                            }) {
                                Text("Forgot Login ID?")
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                            }
                            Spacer()
                            Button(action: {
                                // Forgot Password action here
                            }) {
                                Text("Forgot Password?")
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                            }
                            Spacer()
                            Button(action: {
                                // Face ID login action here
                            }) {
                                Image(systemName: "faceid")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                

                // Contact us, location, signup
                HStack {
                    Spacer() // Pushes the first button to the left edge
                    
                    Button(action: {
                        // Contact us action here
                    }) {
                        Text("Contact Us")
                            .foregroundColor(.white)
                    }
                    
                    Spacer() // Spacing between the first and second button
                    
                    Button(action: {
                        // Location action
                    }) {
                        Text("Location")
                            .foregroundColor(.white)
                    }
                    
                    Spacer() // Spacing between the second and third button
                    
                    Button(action: {
                        // Sign up
                    }) {
                        Text("Sign Up")
                            .foregroundColor(.white)
                    }
                    
                    Spacer() // Pushes the last button to the right edge
                }
                .padding(.bottom, 20)
                
                // Website name and privacy policy
                VStack {
                    Button(action: {
                        // Midflorida link
                    }) {
                        Text("midflorida.com")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .underline()
                            .padding(.horizontal)
                    }
                    Text("2024 MIDFLORIDA Credit Union")
                        .font(.footnote)
                    Button(action: {
                        // Privacy policy link
                    }) {
                        Text("Privacy Policy")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .underline()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 20)
            }
            .padding(.top, 20) // Adjust top padding to avoid clipping
        }
    }
}

#Preview {
    ContentView()
}
