//
//  ButtonAnimationView.swift
//  EnterButtonAnimation
//
//  Created by Runhua Huang on 2020/2/8.
//  Copyright © 2020 Runhua Huang. All rights reserved.
//

import SwiftUI

struct ButtonAnimationView: View {
    
    @State private var downloadButtonTapped = false
    @State private var completed = false
    @State private var loading = false
    @State private var fullcircle = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .trim(from: 0, to: self.fullcircle ? 0.95 : 1)
                .stroke(lineWidth: 5)
                .frame(width: self.downloadButtonTapped ? 60 : 300, height: 60)
            
                .foregroundColor(self.downloadButtonTapped ? .purple : Color(red: 230/255, green: 230/255, blue: 230/255))
                .background(self.downloadButtonTapped ? .white : Color(red: 230/255, green: 230/255, blue: 230/255))
                .cornerRadius(30)
                .rotationEffect(Angle(degrees: self.loading ? 0 : -1440))
                .onTapGesture {
                    withAnimation(.default) {
                        self.downloadButtonTapped = true
                        self.fullcircle = true
                    }
                }
            
            if !downloadButtonTapped {
                HStack {
                    Image("riding").resizable().frame(width: 30, height: 30)
                    Text("Enter")
                }
                .font(.headline)
                .onDisappear() {
                    self.startProcessing()
                }
            }
            
            if completed {
                CheckView().offset(x: -60, y: -75)
            }
        }
    }
    
    private func startProcessing() {
        withAnimation(Animation.linear(duration: 5)) {
            self.loading = true
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.completed = true
            self.fullcircle = false
        }
    }
    
}

struct ButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAnimationView()
    }
}
