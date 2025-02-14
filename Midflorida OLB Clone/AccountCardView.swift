//
//  AccountCardView.swift
//  Midflorida OLB Clone
//
//  Created by Israel on 2/11/25.
//

import SwiftUI

struct AccountCardView: View {
    var accountName: String
    var lastFour: String
    var accountType: String
    var amount: String

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                VStack(alignment: .leading) {
                    Text(accountName)
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("****\(lastFour)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }

                Spacer()

                Button(action: {
                    // Menu action
                }) {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.gray)
                }
            }
            
            Text(accountType)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack {
                Spacer()
                VStack(alignment: .trailing) {
                    Text(amount)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Text("Available Balance")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.08), radius: 2, x: 0, y: 1)
        .padding(.horizontal)
    }
}

// MARK: - Preview
#Preview {
    VStack(spacing: 8) {
        AccountCardView(accountName: "Checking", lastFour: "1234", accountType: "eVolve Checking", amount: "$5,203.34")
        AccountCardView(accountName: "Savings", lastFour: "5678", accountType: "High-Yield Savings", amount: "$10,489.12")
        AccountCardView(accountName: "Credit Card", lastFour: "7899", accountType: "Visa Signature", amount: "$1,202.45")
    }
    .padding()
    .background(Color.gray.opacity(0.1))
}
