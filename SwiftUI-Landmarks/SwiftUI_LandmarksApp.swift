//
//  SwiftUI_LandmarksApp.swift
//  SwiftUI-Landmarks
//
//  Created by Deveesh Mehandiratta on 02/09/24.
//

import SwiftUI

@main
struct SwiftUI_LandmarksApp: App {
    private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
