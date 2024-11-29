//
//  TryAnimatableData.swift
//  Drawing
//
//  Created by Weerawut Chaiyasomboon on 29/11/2567 BE.
//

import SwiftUI

struct TryAnimatableData: View {
    @State private var insetAmount = 50.0
    
    var body: some View {
        Trapezoid(insetAmount: insetAmount)
            .frame(width: 200, height: 100)
            .padding(50)
            .onTapGesture {
                withAnimation{
                    insetAmount = Double.random(in: 10...90)
                }
            }
    }
}

#Preview {
    TryAnimatableData()
}

struct Trapezoid: Shape {
    var insetAmount: Double
    
    var animatableData: Double {
        get { insetAmount }
        set { insetAmount = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: rect.maxY))
        path.addLine(to: CGPoint(x: insetAmount, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - insetAmount, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: rect.maxY))
        
        return path
    }
}
