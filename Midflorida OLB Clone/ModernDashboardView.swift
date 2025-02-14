//
//  ModernDashboardView.swift
//  Midflorida OLB Clone
//
//  Created by Israel on 2/11/25.
//

import SwiftUI

struct ModernDashboardView: View {
    @State private var showSettings = false

    var body: some View {
        ZStack {
            Color.gray.opacity(0.1).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue.opacity(0.8)]),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                        .edgesIgnoringSafeArea(.top)

                    HStack {
                        Button(action: {}) {
                            Image(systemName: "line.horizontal.3")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                        }

                        Spacer()

                        Text("Accounts")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .center)

                        Spacer()

                        HStack(spacing: 16) {
                            Button(action: {}) {
                                Image(systemName: "envelope")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                            }

                            Button(action: { showSettings.toggle() }) {
                                Image(systemName: "gearshape.fill")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                            }
                            .sheet(isPresented: $showSettings) {
                                SettingsView() //THIS NEED TO BE REDONE
                            }
                        }
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                }
                .frame(height: 55)
                .shadow(color: Color.black.opacity(0.08), radius: 3, x: 0, y: 2)

               
                Color.white.frame(height: 1) //separation line
                .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        QuickActionButton(title: "Quick Transfer", icon: "arrow.left.arrow.right")
                        QuickActionButton(title: "Rewards", icon: "gift")
                        QuickActionButton(title: "Statements", icon: "doc.text")
                        QuickActionButton(title: "Bill Pay", icon: "creditcard")
                        QuickActionButton(title: "More", icon: "ellipsis.circle")
                    }
                    .padding(.horizontal)
                }
                //styling choice for spacing
                .padding(.top, 8)
                .padding(.bottom, 12)
                
                
                Color.white.frame(height: 1) //adding depth with line speration
                
                ScrollView {
                    VStack(spacing: 14) {
                        AccountCardView(accountName: "Checking", lastFour: "2581", accountType: "eVolve Checking", amount: "$5,203.34")
                        AccountCardView(accountName: "Savings", lastFour: "1278", accountType: "High-Yield Savings", amount: "$10,489.12")
                        AccountCardView(accountName: "Credit Card", lastFour: "7871", accountType: "Visa Signature", amount: "$1,202.45")
                    }
                    .padding(.horizontal)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                Spacer()
                
               
                VStack{
                    Button(action: {
                        //TODO
                    }){
                        Text("Add External Account")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.15), radius: 4, x: 0, y: 3)
                    }
                    
                    Button(action: {
                        //TODO
                    }) {
                        Text("Open an Account")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.blue)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
                            .shadow(color: Color.black.opacity(0.15), radius: 4, x: 0, y: 3)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 16)
            }
        }
    }
}

struct QuickActionButton: View {
    var title: String
    var icon: String

    var body: some View {
        Button(action: {
            //TODO
        }) {
            HStack {
                Image(systemName: icon)
                    .font(.system(size: 16))
                Text(title)
                    .font(.subheadline)
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
            .background(Color.blue.opacity(0.09))
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.blue, lineWidth: 1.5)
            )
            .shadow(color: Color.black.opacity(0.06), radius: 3, x: 0, y: 2)
        }
        .foregroundColor(Color.blue)
    }
}

// Preview
#Preview {
    ModernDashboardView()
}
