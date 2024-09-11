//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Jordan Fraughton on 8/18/24.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
    }
}

extension View {
    func title() -> some View {
        modifier(TitleModifier())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .title()
    }
}

#Preview {
    ContentView()
}
