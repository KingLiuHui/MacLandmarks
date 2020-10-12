//
//  CircleImage.swift
//  MacLandmarks
//
//  Created by 刘辉 lewis on 2020/10/12.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
        var shadowRadius: CGFloat = 10
        var body: some View {
            image
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: shadowRadius)
        }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}

