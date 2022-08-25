//
//  LiteModeRow.swift
//  SwiftUiCombineAndData
//
//  Created by Abdullo Hafizov on 22/08/22.
//

import SwiftUI

struct LiteModeRow: View {
    @State private var isLiteMode: Bool = false
    
    var body: some View {
        Toggle(isOn: $isLiteMode, label: {
            HStack(spacing: 12) {
                GradientIcon(icon: "bell.fill")
                
                VStack(alignment: .leading) {
                    Text("Lite Mode")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Better performance. Recomended for iPhone X and older.")
                        .font(.caption2)
                        .opacity(0.2)
                }
            }
        })
        .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.3450980392, green: 0.337254902, blue: 0.8392156863, alpha: 1))))
    }
}

struct LiteModeRow_Previews: PreviewProvider {
    static var previews: some View {
        LiteModeRow()
    }
}
