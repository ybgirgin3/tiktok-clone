//
//  CustomVideoPlayer.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 4.08.2024.
//

import AVKit
import Foundation
import SwiftUI

struct CustomVideoPlayer: UIViewControllerRepresentable {
  var player: AVPlayer

  func makeUIViewController(context: Context) -> UIViewController {
    let controller = AVPlayerViewController()
    controller.player = player
    /**
         customization begins
         **/
    controller.showsPlaybackControls = false
    controller.exitsFullScreenWhenPlaybackEnds = true
    controller.allowsPictureInPicturePlayback = true
    controller.videoGravity = .resizeAspectFill

    /**
         customization ends
         **/

    return controller
  }

  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
