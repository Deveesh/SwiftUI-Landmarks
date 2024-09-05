//
//  LandmarkList.swift
//  SwiftUI-Landmarks
//
//  Created by Deveesh Mehandiratta on 05/09/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }

            }.navigationTitle("Landmarks")
        } detail: {
            Text("placeholder")
        }

    }
}

#Preview {
    LandmarkList()
}
