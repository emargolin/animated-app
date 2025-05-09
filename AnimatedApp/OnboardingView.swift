//
//  OnboardingView.swift
//  AnimatedApp
//
//  Created by Elena Margolin on 4/14/25.
//

import SwiftUI
import RiveRuntime

struct OnboardingView: View {
    let button = RiveViewModel(fileName: "graybutton-2")
    
    var body: some View {
        ZStack {
            RiveViewModel(fileName: "background_bubbles").view()
                .ignoresSafeArea()
                .blur(radius: 10)
                .background(
                    Image("y2k")
                        .ignoresSafeArea()
                        .blur(radius: 2)
                )
            VStack (spacing: 10) {
                Spacer()
                RiveViewModel(fileName: "goldfishbounce").view()
                    .position(x: 180, y: 450)
            }
            .padding()
            
            button.view()
                .frame(width: 236, height: 64)
                .overlay(
                    Label("Enter", systemImage: "arrow.forward")
                        .offset(x: 4, y: 1)
                        .font(.title2)
                        .bold()
                )
                .onTapGesture {
                    button.play(animationName: "active2")
                }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
