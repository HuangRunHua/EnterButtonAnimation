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
        GeometryReader { geometry in
            Path { path in
                    let width: CGFloat = min(geometry.size.width, geometry.size.height)
                    let height = geometry.size.height
                            
                    path.addLines([
                                .init(x: width/2 - 10, y: height/2 - 10),
                                .init(x: width/2, y: height/2),
                                .init(x: width/2 + 20, y: height/2 - 20),
                                ])
            }
            .trim(from: 0, to: checkViewAppear ? 1 : 0)
            .stroke(style: StrokeStyle(lineWidth: 2.0, lineCap: .round))
            .animation(Animation.easeIn(duration: 0.4))
            .frame(width: 50, height: 50)
            .aspectRatio(1, contentMode: .fit)
            .onAppear() {
                self.checkViewAppear.toggle()
            }
        }.frame(width: 50, height: 50)
    }
}

struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView()
    }
}
