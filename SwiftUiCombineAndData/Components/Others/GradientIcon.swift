//
//  GradientIcon.swift
//  SwiftUiCombineAndData
//
//  Created by Abdullo Hafizov on 21/08/22.
//

import SwiftUI

struct GradientIcon: View {
    var icon: String = "questionmark"
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6823529412, green: 0.7450980392, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.654221952, blue: 0.9848131537, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .mask(Image(systemName: icon)
                .font(.system(size: 17)))
            .background(Color(#colorLiteral(red: 0.1367635727, green: 0.1055225506, blue: 0.3106993437, alpha: 0.8)))
            .frame(width: 36, height: 36)
            .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 12, style: .continuous)
                .stroke(lineWidth: 1)
                .foregroundColor(.white).blendMode(.overlay))
    }
}

struct GradientIcon_Previews: PreviewProvider {
    static var previews: some View {
        GradientIcon()
    }
}
