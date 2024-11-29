//
//  TryImagePaint.swift
//  Drawing
//
//  Created by Weerawut Chaiyasomboon on 29/11/2567 BE.
//

import SwiftUI

struct TryImagePaint: View {
    var body: some View {
        Capsule()
            .strokeBorder(ImagePaint(image: Image(systemName: "person.crop.circle"), scale: 1), lineWidth: 20)
            .frame(width: 300, height: 200)
        
        Text("Hello World")
            .frame(width: 300, height: 300)
            .border(ImagePaint(image: Image(systemName: "person.crop.circle"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5), scale: 1), width: 30)
    }
}

#Preview {
    TryImagePaint()
}
