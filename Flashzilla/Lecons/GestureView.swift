//
//  GestureView.swift
//  Flashzilla
//
//  Created by Giovanni Gaffé on 2022/1/10.
//

import SwiftUI

struct GestureView: View {
    @State private var currentAmount = Angle.zero
    @State private var finalAmount = Angle.zero
    @State private var offset = CGSize.zero
    @State private var isDragging = false
    
    var body: some View {
        let dragGesture = DragGesture()
            .onChanged { value in
                offset = value.translation
            }
            .onEnded { _ in
                offset = .zero
                isDragging = false
            }
        
        let pressGesture = LongPressGesture()
            .onEnded { value in
                withAnimation {
                    isDragging = true
                }
            }
        
        let combined = pressGesture.sequenced(before: dragGesture)
        
        Circle()
            .fill(.red)
            .frame(width: 64, height: 64)
            .scaleEffect(isDragging ?1.5 : 1)
            .offset(offset)
            .gesture(combined)
//        VStack {
//            Text("Hello, World!")
//                .onTapGesture {
//                    print("Text tapped!")
//                }
//        }
//        .highPriorityGesture(
//        .simultaneousGesture(
//            TapGesture()
//                .onEnded {
//                    print("VStack tapped")
//                }
//            )
    }
}

struct GestureView_Previews: PreviewProvider {
    static var previews: some View {
        GestureView()
    }
}




// MARK: - Gesture possibilities

//    .onLongPressGesture {
//        print("Long Pressed!")
//    } onPressingChanged: { inProgress in
//        print("In progress: \(inProgress)")
//    }
//            .onTapGesture(count: 2) {
//                print("Double tap")
//            }

// MARK: - Rotation

//    .rotationEffect(finalAmount + currentAmount)
//    .gesture(
//    RotationGesture()
//        .onChanged { angle in
//            currentAmount = angle
//        }
//        .onEnded  { amount in
//            finalAmount += currentAmount
//            currentAmount = .zero
//        }
//
//    )
