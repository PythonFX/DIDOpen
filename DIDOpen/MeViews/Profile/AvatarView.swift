//
//  AvatarView.swift
//  DIDOpen
//
//  Created by VincentMing on 2022/12/14.
//

import SwiftUI

struct AvatarView: View {
    
    var imageName: String
    
    var size: CGFloat
    
    var isRound = false
    
    var cornerRadius: CGFloat = 16
    
    var body: some View {
        
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size)
            .cornerRadius(isRound ? size / 2 : cornerRadius)
        
    }
}
