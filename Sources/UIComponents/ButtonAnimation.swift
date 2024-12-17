//
//  File.swift
//  UIComponents
//
//  Created by Elizaveta on 17.12.2024.
//

import SwiftUI

public struct ButtonAnimation: View {
    @Binding public var isExpanded: Bool
    
    public init(isExpanded: Binding<Bool>) {
        self._isExpanded = isExpanded
    }
    
    public var body: some View {
        Image(systemName: "star")
            .frame(width: 30, height: 30)
            .foregroundColor(.pink)
            .opacity(isExpanded ? 0 : 0.5)
            .scaleEffect(isExpanded ? 4 : 1)
            .animation(.easeIn(duration: 0.3), value: isExpanded)
    }
}
