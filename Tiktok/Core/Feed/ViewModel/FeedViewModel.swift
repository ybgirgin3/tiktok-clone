//
//  FeedViewModel.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 4.08.2024.
//

import Foundation

class FeedViewModel: ObservableObject {  // A type that emits notifications to observers when underlying data changes
  /**
      •    @Published: Bu, SwiftUI tarafından sağlanan bir özellik sarmalayıcısıdır. Bu özellik, herhangi bir değişiklik olduğunda kullanıcı arayüzünü güncelleyecek şekilde işaretler. @Published bir özellik değiştiğinde, SwiftUI bu özelliğe bağlı olan herhangi bir görünümü otomatik olarak yeniler.
      •    var posts: Bu, posts adında bir değişken tanımlar.
      •    = [Post]() : Bu, posts değişkenini Post nesnelerinin boş bir dizisi olarak başlatır.
     **/

  @Published var posts = [Post]()

  let videoUrls = [
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  ]

  init() {
    fetchPosts()
  }

  func fetchPosts() {
    self.posts = [
      .init(id: NSUUID().uuidString, videoUrl: videoUrls[0]),
      .init(id: NSUUID().uuidString, videoUrl: videoUrls[1]),
      .init(id: NSUUID().uuidString, videoUrl: videoUrls[2]),
      .init(id: NSUUID().uuidString, videoUrl: videoUrls[3]),
    ]
  }
}
