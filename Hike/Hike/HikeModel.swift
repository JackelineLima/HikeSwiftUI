//
//  HikeModel.swift
//  Hiking
//
//  Created by Jackeline Pires De Lima on 30/09/22.
//

import Foundation

struct HikeModel {
    let name: String
    let imageURL: String
    let miles: Double
}

extension HikeModel {
    static func all() -> [HikeModel] {
        return [
            HikeModel(name: "Salmonberry Trail", imageURL: "image1", miles: 6),
            HikeModel(name: "Tom, Dick, and Harry Mountain", imageURL: "image2", miles: 5.8),
            HikeModel(name: "Tamanawas Falls", imageURL: "image3", miles: 5)
        ]
    }
}
