//
//  SwiftUIView.swift
//  X5336
//
//  Created by Joseph Heck on 12/15/21.
//

import SwiftUI
import Lindenmayer

public struct DynamicLSystemView: View {
    @State private var evolutions: Double = 0
    @State private var selectedSystem = Lindenmayer.Examples2D.fractalTree
    public var body: some View {
        VStack {
            Picker("L-System", selection: $selectedSystem) {
                Text("Fractal Tree").tag(Lindenmayer.Examples2D.fractalTree)
                Text("Koch Curve").tag(Lindenmayer.Examples2D.kochCurve)
                Text("Sierpinski Triangle").tag(Lindenmayer.Examples2D.sierpinskiTriangle)
                Text("Dragon Curve").tag(Lindenmayer.Examples2D.dragonCurve)
                Text("Barnsley Fern").tag(Lindenmayer.Examples2D.barnsleyFern)
            }
            .padding()
            HStack {
                Text("Evolutions:")
                Slider(value: $evolutions, in: 0...10.0, step: 1.0) {
                    Text("Evolutions")
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("10")
                }
            }
            .padding()
            Lsystem2DView(system: selectedSystem.evolved(iterations: Int(evolutions)))
        }
    }
}

struct DynamicLSystemView_Previews: PreviewProvider {
    static var previews: some View {
        DynamicLSystemView()
    }
}
