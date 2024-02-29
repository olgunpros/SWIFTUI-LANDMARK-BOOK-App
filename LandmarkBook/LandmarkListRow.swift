//
//  LandmarkListRow.swift
//  LandmarkBook
//
//  Created by Olgun ‏‏‎‏‏‎ on 29.02.2024.
//

import SwiftUI

struct LandmarkListRow: View {
    var landmark : Landmark
    var body: some View {
        HStack {
            landmarkRow(landmarkImageName: landmark.imageName)
            Text(landmark.name)
        }
    }
}

#Preview {
    LandmarkListRow(landmark: LondonLandmark)
}
