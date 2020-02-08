//
//  BootView.swift
//  EnterButtonAnimation
//
//  Created by Runhua Huang on 2020/2/8.
//  Copyright © 2020 Runhua Huang. All rights reserved.
//

import SwiftUI

struct BootView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading,spacing: 30) {
                    Image("icon")
                        .resizable()
                        .frame(width: 90, height: 90)
                        .cornerRadius(20)
                    
                    VStack(alignment: .leading,spacing: -5) {
                        Text("Welcome")
                            .font(.system(size: 50, weight: .black, design: .rounded))
                        Text("Riding")
                            .font(.system(size: 50, weight: .black, design: .rounded))
                            .foregroundColor(Color.init(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    }
                }
                Spacer()
            }
            .padding(.leading, 60)
            
            Spacer()
            
            ButtonAnimationView()
        }.padding(.top, 200)
        
    }
}

struct BootView_Previews: PreviewProvider {
    static var previews: some View {
        BootView()
    }
}
