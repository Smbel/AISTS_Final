    //
//  AISTS_FinalApp.swift
//  AISTS_Final
//
//  Created by Sarah Beltran on 10/31/23.
//

import SwiftUI
import MobileVLCKit

@main
struct AISTS_FinalApp: App {
    var body: some Scene {
        WindowGroup {
            VideoContentView()
            
        }
    }
}

struct VideoContentView: View {
    var body: some View {
        VStack{
            VLCPlayerView(streamURL: "rtmp://3.18.54.198:1935/processed/stream")
                        .frame(maxWidth: 1280, maxHeight: 720)
                        .background(Color.red)
        }
    }
}
