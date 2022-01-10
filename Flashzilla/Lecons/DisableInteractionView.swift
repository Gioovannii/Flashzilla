//
//  DisableInteractionView.swift
//  Flashzilla
//
//  Created by Giovanni Gaffé on 2022/1/10.
//

import SwiftUI

struct DisableInteractionView: View {
    var body: some View {
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("World")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("VStack tapped!")
        }
    }
}

struct DisableInteractionView_Previews: PreviewProvider {
    static var previews: some View {
        DisableInteractionView()
    }
}


//ZStack {
//    Rectangle()
//        .fill(.blue)
//        .frame(width: 300, height: 300)
//        .onTapGesture {
//            print("Rectangle tapped !")
//        }
//
//    Circle()
//        .fill(.red)
//        .frame(width: 300, height: 300)
//        .contentShape(Rectangle())
//        .onTapGesture {
//            print("Circle tapped!")
//        }
//
////                .allowsHitTesting(false)
//}
