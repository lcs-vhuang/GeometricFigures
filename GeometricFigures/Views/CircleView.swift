//
//  CircleView.swift
//  GeometricFigures
//
//  Created by 黃翊喬 on 2026/2/9.
//

import SwiftUI

struct CircleView: View {
    
    @State var currentCircle = Circle(radius: 10)
    
    var body: some View {
        VStack {
            // TODO: Add image later
            Image("CircleDiagram")
                .resizable()
                .scaledToFit()
                .containerRelativeFrame(.vertical, count: 3, span: 1, spacing: 0)
            
            // Label for the slider
            Text("Radius")
                .font(.title.bold())
                .containerRelativeFrame(.vertical, count: 8, span: 1, spacing: 0)
            
            // Slider for radius input
            Slider(value: $currentCircle.radius,
                   in: 1...100,
                   step: 1.0
            )
            .containerRelativeFrame(.vertical, count: 15, span: 1, spacing: 0)
            
            // Label showing the current slider value
            VStack{
                
                InfoDisplayView(
                    label: "Radius",
                    value: "\(currentCircle.radius.formatted())"
                )
                InfoDisplayView(
                    label: "Diameter",
                    value: "\(currentCircle.diameter.formatted())"
                )
                InfoDisplayView(
                    label: "Area",
                    value: "\(currentCircle.area.formatted())"
                )
                
                InfoDisplayView(
                    label: "Circumference",
                    value: "\(currentCircle.circumference.formatted())"
                )
            }
            .containerRelativeFrame(.vertical, count: 3, span: 1, spacing: 0)
            
            Spacer()
        }
        .padding()
    }
}


#Preview {
    CircleView()
}
