//
//  HikeDetail.swift
//  Hike
//
//  Created by Jackeline Pires De Lima on 30/09/22.
//

import SwiftUI

struct HikeDetail: View {
    let hike: HikeModel
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
        }
        .navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: HikeModel(name: "Teste", imageURL: "image1", miles: 5.0))
    }
}
