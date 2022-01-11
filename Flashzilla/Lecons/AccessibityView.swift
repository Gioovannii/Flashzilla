//
//  AccessibityView.swift
//  Flashzilla
//
//  Created by Giovanni Gaffé on 2022/1/11.
//

import SwiftUI

func withOptionalanimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result {
    if UIAccessibility.isReduceMotionEnabled {
        return try body()
    } else {
        return try withAnimation(animation, body)
    }
}

struct AccessibityView: View {
    //    @Environment(\.accessibilityDifferentiateWithoutColor) var differentiateWithoutColor
    //    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @Environment(\.accessibilityReduceTransparency) var reduceTransparancy
    
    
    @State private var scale = 1.0
    
    var body: some View {
        Text("Hello world!")
            .padding()
            .background(reduceTransparancy ? .black : .black.opacity(0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
        
        // MARK: - Scaling

        //        Text("Hello world!")
        //            .scaleEffect(scale)
        //            .onTapGesture {
        //                withOptionalanimation {
        //                    scale *= 1.5
        //                }
        //                if reduceMotion {
        //                    scale *= 1.5
        //                } else {
        //                    withAnimation {
        //                        scale *= 1.5
        //                    }
        //                }
        //            }
        
        // MARK: - Color

        //        HStack {
        //            if differentiateWithoutColor {
        //                Image(systemName: "checkmark.circle")
        //            }
        //
        //            Text("Success")
        //        }
        //        .padding()
        //        .background(differentiateWithoutColor ? .black : .green)
        //        .foregroundColor(.white)
        //        .clipShape(Capsule())
    }
}

struct AccessibityView_Previews: PreviewProvider {
    static var previews: some View {
        AccessibityView()
    }
}
