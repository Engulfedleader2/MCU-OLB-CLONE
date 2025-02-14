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
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer().frame(height: 40)
                
                // Logo at top
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280, height: 90) // Slightly smaller for proportion
                    .padding(.top, 30) // Reduced padding to bring it closer
                
                
                Spacer().frame(height: 20)
                
                // ScrollView to allow scrolling if needed
                ScrollView {
                    VStack(spacing: 14) {
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
                        
                        Spacer().frame(height: 8) // Added spacing before the toggle
                        
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
                                .background(Color.blue)
                                .cornerRadius(8)
                                .padding(.horizontal)
                                .shadow(radius: 2)
                            
                        }
                        
                        // Face ID login button and forgot buttons
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
                                    .padding(8) // Slight padding for better tap area
                                    .background(Color.white.opacity(0.2)) // Subtle background
                                    .clipShape(Circle()) // Rounded background
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                Spacer(minLength: 10) // Less spacing to bring footer elements closer
                
                // Contact us, location, signup
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
                
                // Footer section with better alignment
                VStack(spacing: 5) { // Tightened spacing
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
                    .frame(maxWidth: 300) // Keeps it compact
                    .padding(.bottom, 5)
                    
                    // Copyright text centered below
                    Text("© 2024 MIDFLORIDA Credit Union")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 15) // Final spacing adjustment
            }
            .padding(.top, 10)
        }
    }
}

#Preview {
    ContentView()
}
