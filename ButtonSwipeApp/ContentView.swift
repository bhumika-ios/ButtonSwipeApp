//
//  ContentView.swift
//  ButtonSwipeApp
//
//  Created by Bhumika Patel on 14/11/24.
//

import SwiftUI

struct ContentView: View {
        @State private var showCheckout = false
        
        var body: some View {
            VStack(spacing: 20) {
                // Rectangle Button with 99rs Text
                Button(action: {
                    // Action for rectangle button if needed
                }) {
                    HStack{
                        Text("99rs")
                            
                        
                        Button(action: {
                            withAnimation {
                                showCheckout.toggle()
                            }
                        }) {
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.blue)
                        }
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                    }
                }
                
                // Round Button
//                Button(action: {
//                    // Action for round button if needed
//                }) {
//                    Circle()
//                        .fill(Color.green)
//                        .frame(width: 60, height: 60)
//                }
                
                // Arrow Button with Slide Animation
//                Button(action: {
//                    withAnimation {
//                        showCheckout.toggle()
//                    }
//                }) {
//                    Image(systemName: "arrow.right.circle.fill")
//                        .resizable()
//                        .frame(width: 40, height: 40)
//                        .foregroundColor(.blue)
//                }
                
                // Checkout Text with Slide-In Animation
                if showCheckout {
                    Text("Checkout")
                        .font(.title)
                        .foregroundColor(.blue)
                        .transition(.move(edge: .trailing))
                }
            }
            .padding()
        }
    
}

#Preview {
    ContentView()
}
