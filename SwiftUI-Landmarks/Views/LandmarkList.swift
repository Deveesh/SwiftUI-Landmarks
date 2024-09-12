//
//  LandmarkList.swift
//  SwiftUI-Landmarks
//
//  Created by Deveesh Mehandiratta on 05/09/24.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Label")
                })
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }

            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("placeholder")
        }

    }
}

struct EquvalntView: View {
    var body: some View {
        Text("1")
        Circle()
    }
}

#Preview {
    LandmarkList()
}
