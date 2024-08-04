//
//  Post.swift
//  Tiktok
//
//  Created by Yusuf Berkay Girgin on 4.08.2024.
//

import Foundation

struct Post: Identifiable, Codable {  // identifiable: hold value, Codable: Serialize output
  let id: String
  let videoUrl: String
}
