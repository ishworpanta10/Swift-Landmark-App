//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ishwor on 06/03/2024.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("pull_up").aspectRatio(contentMode: .fit).frame(height: 300,alignment: .topLeading).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(.white,lineWidth: 5)).shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
