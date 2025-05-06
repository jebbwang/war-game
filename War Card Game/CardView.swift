//
//  CardView.swift
//  War Card Game
//
//  Created by Jeff Wang on 5/6/25.
//

import SwiftUI

struct CardView: View {
    @Binding var imageName: String
    @State private var isFlipped: Bool = false
    
    var body: some View {
        Image(isFlipped ? imageName : "back")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 225)
            .onTapGesture {
                withAnimation(.linear) {
                    isFlipped.toggle()
                }
            }
        
    }
}
