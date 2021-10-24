//
//  ImageLoader.swift
//  Homework3
//
//  Created by Евгений Самарин on 24.10.2021.
//

import Foundation

class ImageLoader: Loader {

    typealias DataType = Image

    let images = [Image(name: "First Image", url: "Some url"),
                 Image(name: "Second Image", url: "Some url"),
                 Image(name: "Third Image", url: "Some url")]

    func load(completion: @escaping (Result<Image>) -> Void) {
        completion(.success(images))
    }
}
