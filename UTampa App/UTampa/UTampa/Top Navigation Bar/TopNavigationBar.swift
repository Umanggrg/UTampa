//
//  TopNavigationBar.swift
//  UTampa
//
//  Created by Owner on 11/3/24.
//

import SwiftUI

struct TopNavigationBar: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                print("Notification tapped")
            }) {
                Image(systemName: "bell")
                    .font(.system(size: 24))
                    .foregroundColor(.black)
            }
            .padding()
        }
        .background(Color.white)
        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0) // Adjust for safe area
    }
}

struct TopNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationBar()
            .previewLayout(.sizeThatFits)
            .background(Color.gray.opacity(0.2)) // For better preview visibility
    }
}
