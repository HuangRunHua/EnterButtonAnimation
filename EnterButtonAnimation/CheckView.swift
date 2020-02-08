//
//  CheckView.swift
//  EnterButtonAnimation
//
//  Created by Runhua Huang on 2020/2/8.
//  Copyright © 2020 Runhua Huang. All rights reserved.
//

import SwiftUI

struct CheckView: View {
    
    @State private var checkViewAppear = false
    
    var body: some View {
        Path { path in
            path.addLines([
                .init(x: 70, y: 100),
                .init(x: 80, y: 110),
                .init(x: 100, y: 90)
                ])
        }.trim(from: 0, to: checkViewAppear ? 1 : 0)
            .stroke(Color.purple, lineWidth: 2)
            .animation(Animation.easeIn(duration: 0.4))
            .font(.system(.headline, design: .rounded))
        .frame(width: 50, height: 50)
            .onAppear() {
                self.checkViewAppear.toggle()
        }
    }
}

struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView()
    }
}
