//
//  CircleImageView.swift
//  LandmarkBook
//
//  Created by Olgun ‏‏‎‏‏‎ on 29.02.2024.
//

import SwiftUI

struct CircleImageView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
            .shadow(radius: 15)
    }
}

#Preview {
    CircleImageView(image: Image("pizza"))
}
