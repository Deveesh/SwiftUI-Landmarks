//
//  CircleImage.swift
//  SwiftUI-Landmarks
//
//  Created by Deveesh Mehandiratta on 02/09/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        VStack {
            image.clipShape(Circle())
                .overlay(alignment: .center) {
                    Circle().stroke(.white, lineWidth: 4)
                }.shadow(radius: 7)
        }
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
