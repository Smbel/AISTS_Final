//
//  MobileVLCKitStreaming.swift
//  AISTS_Final
//
//  Created by Sarah Beltran on 11/1/23.
//

import SwiftUI
import MobileVLCKit

struct VLCPlayerView: UIViewRepresentable {
    var streamURL: String

    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        context.coordinator.setupPlayback(in: view, with: streamURL)
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        // Handle any updates to the UIView (if needed)
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator {
        var mediaPlayer: VLCMediaPlayer

        init(_ view: VLCPlayerView) {
            self.mediaPlayer = VLCMediaPlayer()
        }

        func setupPlayback(in view: UIView, with streamURL: String) {
            if let mediaURL = URL(string: streamURL) {
                let media = VLCMedia(url: mediaURL)
                mediaPlayer.media = media
                mediaPlayer.drawable = view
                mediaPlayer.play()
            }
        }
    }
}
