//
//  LSystemMetrics.swift
//  X5336
//
//  Created by Joseph Heck on 12/16/21.
//

import Lindenmayer
import SwiftUI

public struct LSystemMetrics: View {
    let system: LSystemProtocol
    public var body: some View {
        VStack {
            Text("State size: \(system.state.count)")
            Text("\(String(describing: system.state))")
                .font(.caption)
                .lineLimit(5)
                .padding(.horizontal)
        }
    }

    public init(system: LSystemProtocol) {
        self.system = system
    }
}

struct LSystemMetrics_Previews: PreviewProvider {
    static var previews: some View {
        LSystemMetrics(system: Lindenmayer.Examples2D.barnsleyFern.lsystem)
    }
}
