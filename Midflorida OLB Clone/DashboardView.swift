//
//  DashboardView.swift
//  Midflorida OLB Clone
//
//  Created by Israel on 6/3/24.
//

//
//  DashboardView.swift
//  Midflorida OLB Clone
//
//  Created by Israel on 6/3/24.
//

//
//  DashboardView.swift
//  Midflorida OLB Clone
//
//  Created by Israel on 6/3/24.
//

import SwiftUI

struct DashboardView: View {
    @State private var showFooter = false
    @State private var showSettings: Bool = false

    var body: some View {
        ZStack {
            // Background Image or Color
            Color.gray.opacity(0.4) // Example background color with opacity
            
            VStack {
                HStack {
                    HStack {
                        Button(action: {
                            // Action for line.horizontal.3 button
                        }) {
                            Image(systemName: "line.horizontal.3")
                                .padding(.leading, 10)
                        }
                        Text("Accounts")
                            .font(.headline)
                            .padding(.leading, 20)
                    }
                    Spacer()
                    Button(action: {
                        //TODO: STUFF
                    }) {
                        Image(systemName: "message")
                    }
                    Button(action: {
                        //TODO: STUFF
                        showSettings.toggle()
                    }) {
                        Image(systemName: "gear ")
                    }
                    .sheet(isPresented: $showSettings){
                        SettingsView()
                    }
                    
                }
                .padding()
                .foregroundColor(.black)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top) // Adjust for safe area
                
                // Horizontal scroll view
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<5) { index in
                            Text(["Quick transfer", "Rewards", "Statements", "Upcoming transactions", "Alerts"][index])
                                .padding(.vertical, 10)
                                .padding(.horizontal, 15)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(15)
                                .font(.subheadline)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
                
                // This creates a scroller for viewing the accounts I placed
                ScrollView {
                    VStack(spacing: 10) {
                        AccountInfoView(accountName: "Checking", accountNumber: "1234", accountType: "Evolve Checking", amount: "$502.23")
                        AccountInfoView(accountName: "Saving", accountNumber: "5362", accountType: "High Five Savings", amount: "$1,609.78")
                        AccountInfoView(accountName: "Credit Card", accountNumber: "7899", accountType: "Visa Signature", amount: "$3,252.52")
                        
                        Spacer().frame(height: 20) // Add some space before the buttons
                        
                        Button(action: {
                            // Action for Add External accounts
                        }) {
                            Text("Add External accounts")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .padding(.horizontal)
                        
                        Button(action: {
                            // Action for Open an Account
                        }) {
                            Text("Open an Account")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .padding(.horizontal)
                        
                        // Footer
                        if showFooter {
                            HStack {
                                Button(action: {
                                    //TODO STUFF
                                }) {
                                    Text("Midflorida.com")
                                        .foregroundColor(.blue)
                                        .underline()
                                }
                                Spacer()
                                Text("2024 MIDFLORIDA Credit Union")
                                    .font(.footnote)
                                    .foregroundColor(.black)
                                Spacer()
                                Button(action: {
                                    //TODO STUFF
                                }) {
                                    Text("Privacy Policy")
                                        .foregroundColor(.blue)
                                        .underline()
                                }
                            }
                            .padding()
                            .background(Color.white)
                        }
                    }
                    .padding(.bottom, 20) // Add padding at the bottom to ensure the last button is not cut off
                    .background(
                        GeometryReader { geo in
                            Color.clear
                                .preference(key: ScrollViewOffsetPreferenceKey.self, value: geo.frame(in: .global).maxY)
                        }
                    )
                }
                .onPreferenceChange(ScrollViewOffsetPreferenceKey.self) { value in
                    let screenHeight = UIScreen.main.bounds.height
                    withAnimation {
                        showFooter = value < screenHeight
                    }
                }
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

// Preference key to track the scroll view offset
struct ScrollViewOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    DashboardView()
}
