//
//  InfoDisplayView.swift
//  GeometricFigures
//
//  Created by 黃翊喬 on 2026/2/18.
//

import SwiftUI


struct InfoDisplayView : View {
    
    let label: String
    let value: String
    
    var body: some View {
        Text(label)
            .font(Font.title3.bold())
        Text(value)
    }
}
