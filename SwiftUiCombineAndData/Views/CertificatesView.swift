//
//  CertificatesView.swift
//  SwiftUiCombineAndData
//
//  Created by Abdullo Hafizov on 22/08/22.
//

import SwiftUI

struct CertificatesView: View {
    @StateObject var certificateVM = CertificateViewModel()
    @State private var selection: Int = 0
    
    var body: some View {
        if certificateVM.certificates.count > 0 {
            TabView(selection: $selection) {
                ForEach(certificateVM.certificates.indices, id: \.self) { index in
                    CertificateCard(selection: $selection)
                        .padding(.horizontal, 8)
                        .environmentObject(certificateVM)
                }
            }
            .background(AccountBackground())
            .tabViewStyle(PageTabViewStyle())
        } else {
            Text("No one certificates or check your Internet")
        }
        
    }
}

struct CertificatesView_Previews: PreviewProvider {
    static var previews: some View {
        CertificatesView()
    }
}
