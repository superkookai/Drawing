//
//  TryDrawingArrow.swift
//  Drawing
//
//  Created by Weerawut Chaiyasomboon on 29/11/2567 BE.
//

import SwiftUI

struct TryDrawingArrow: View {
    @State private var lineThickness = 5.0
    @State private var fillColor: Color = .red
    let colors: [Color] = [.red,.green,.blue,.yellow,.orange]
    
    var body: some View {
        Arrow()
            .fill(fillColor)
            .stroke(.blue, style: StrokeStyle(lineWidth: lineThickness, lineCap: .round, lineJoin: .round))
            .frame(width: 200, height: 200)
            .padding()
            .onTapGesture {
                withAnimation{
                    lineThickness = Double.random(in: 5...20)
                    fillColor = colors.randomElement()!
                }
            }
    }
}

#Preview {
    TryDrawingArrow()
}

struct Arrow: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: 0))
        path.addLine(to: CGPoint(x: 0, y: rect.height*0.4))
        path.addLine(to: CGPoint(x: rect.width/2*0.6, y: rect.height*0.4))
        path.addLine(to: CGPoint(x: rect.width/2*0.6, y: rect.height))
        path.addLine(to: CGPoint(x: rect.width-(rect.width/2*0.6), y: rect.height))
        path.addLine(to: CGPoint(x: rect.width-(rect.width/2*0.6), y: rect.height*0.4))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height*0.4))
        path.addLine(to: CGPoint(x: rect.midX, y: 0))
        
        return path
    }
}
