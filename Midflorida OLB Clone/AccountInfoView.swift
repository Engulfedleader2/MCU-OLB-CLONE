//
//  AccountInfoView.swift
//  Midflorida OLB Clone
//
//  Created by Israel on 6/4/24.
//

import SwiftUI

struct AccountInfoView: View {
    var accountName: String
    var accountNumber: String
    var accountType: String
    var amount: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Spacer()
                Button(action: {
                    // Action for ellipsis
                }) {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.gray)
                        .padding()
                }
            }
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text(accountName)
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("****\(accountNumber)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.top, -10) // Adjust to move up
                Text(accountType)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top, -5) // Adjust to move up
                
                Spacer().frame(height: 10) // Add some space between account details and amount
                
                HStack {
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(amount)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Text("Available Balance")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    .padding(.trailing) // Add padding to the right side
                }
            }
            .padding([.horizontal, .bottom])
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
        .padding(.horizontal)
        .frame(minHeight: 150)  // Ensure minimum height
    }
}

#Preview {
    AccountInfoView(accountName: "Checking Account", accountNumber: "1234", accountType: "Checking", amount: "$1,234.56")
}

