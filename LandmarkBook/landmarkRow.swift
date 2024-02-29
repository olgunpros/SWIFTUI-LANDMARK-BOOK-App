//
//  landmarkRow.swift
//  LandmarkBook
//
//  Created by Olgun ‏‏‎‏‏‎ on 29.02.2024.
//

import SwiftUI

struct landmarkRow: View {
    var landmarkImageName : String
    var body: some View {
        Image(landmarkImageName).resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50,height: 50,alignment: .leading)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
            .shadow(radius: 15)
        
    }
}

#Preview {
    landmarkRow(landmarkImageName: "pizza")
}
