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
            HStack {
                Text("$9.99")
                    .offset(x: showCheckout ? 10 : 40)

                //                Spacer()

                ZStack {
                    // Animated background shape: Circle or Rectangle based on `showCheckout`
                    RoundedRectangle(cornerRadius: showCheckout ? 30 : 50)
                        .fill(showCheckout ? Color.gray : Color.black)
                        .frame(width: showCheckout ? 180 : 80, height: 62)
                        .animation(
                            .easeInOut(duration: 0.3), value: showCheckout)

                    // Conditionally show either Arrow or Checkout Text with Swipe Animation
                    if showCheckout {
                        Button(action: {
                            withAnimation {
                                showCheckout.toggle()
                            }
                        }) {
                            HStack {
                                Text("Checkout Now")
                                Image(systemName: "arrow.right")
                            }
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                        }
                        .transition(.move(edge: .trailing))
                    } else {
                        Button(action: {
                            withAnimation {
                                showCheckout.toggle()
                            }
                        }) {
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .frame(width: 62, height: 62)
                                .foregroundColor(.white)

                        }
                    }

                }
                .offset(x: showCheckout ? 10 : 70)
            }
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 70)
            .background(Color.black)
            .cornerRadius(50)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
