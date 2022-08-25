//
//  Package.swift
//  SwiftUiCombineAndData
//
//  Created by Abdullo Hafizov on 21/08/22.
//

import Foundation

struct Package: Identifiable {
    var id = UUID()
    var title: String
    var link: String
    
    
}

let packagesData = [
    Package(title: "Firebase", link: "https://github.io/firebase/firebase-ios-sdk"),
    Package(title: "SDWebImageSwiftUI", link: "https://github.io/SDWebImage/SDWebImageSwiftUI"),
    Package(title: "SwiftUI Trackable Scrollview", link: "https://github.io/maxnatchanon/trackable-scroll-view"),
    Package(title: "SwiftUIX", link: "https://github.io/SwiftUIX/SwiftUIX")
]
