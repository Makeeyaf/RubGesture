//
//  EraserView.swift
//  Example
//
//  Created by Makeeyaf on 2023/01/05.
//

import SwiftUI

struct EraserView: View {
    @State var opacity: CGFloat = 1
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 200, height: 200)
                .foregroundColor(.orange)
                .padding(60)
                .opacity(opacity)
                .onRubGesture { length in
                    opacity = max(0, 1 - CGFloat(Int(length / 100)) / 50)
                }
            Text("Rub me tender")
                .font(.title)
                .multilineTextAlignment(.center)
        }
    }
}

struct EraserView_Previews: PreviewProvider {
    static var previews: some View {
        EraserView()
    }
}
