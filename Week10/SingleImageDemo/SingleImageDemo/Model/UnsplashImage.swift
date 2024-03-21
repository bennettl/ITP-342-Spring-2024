//
//  UnsplashImage.swift
//  SingleImageDemo
//
//  Created by Bennett Lee on 3/18/24.
//

import Foundation

struct Url : Decodable {
    let raw: String
    let full: String
    let regular: String
}

struct UnsplashImage : Decodable {
    let id: String
    let slug: String
    let urls: Url
}
