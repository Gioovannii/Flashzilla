//
//  TriggerView.swift
//  Flashzilla
//
//  Created by Giovanni Gaffé on 2022/1/11.
//

import SwiftUI

struct TriggerView: View {
    let timer = Timer.publish(every: 1, tolerance: 0.5, on: .main, in: .common).autoconnect()
    @State private var counter = 0
    
    var body: some View {
        Text("Hello, World!")
            .onReceive(timer) { time in
                if counter == 5 {
                    timer.upstream.connect().cancel()
                } else {
                    print("The time is now \(time)")
                }
                counter += 1
            }
    }
}

struct TriggerView_Previews: PreviewProvider {
    static var previews: some View {
        TriggerView()
    }
}
