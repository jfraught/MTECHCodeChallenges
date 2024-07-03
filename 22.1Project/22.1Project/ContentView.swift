//
//  ContentView.swift
//  22.1Project
//
//  Created by Jordan Fraughton on 6/4/24.
//

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    @State var squaresFilled = 1
    var squaresShown = 1
    var body: some View {
        VStack {
            ForEach(0..<10) { row in
                HStack {
                    ForEach(0..<5) { column in
                        // FIXME: Add code below to display red rectangles
                        if column + row + 1  <= squaresFilled {
                            
                            let _ = print("\(column + row + 1) <= \(squaresFilled)")
                            Rectangle()
                                .fill(.red)
                                .frame(width: 10, height: 10)
                                .padding()
                            
                        } else {
                            Rectangle()
                                .fill(.red)
                                .frame(width: 10, height: 10)
                                .padding()
                        }
                    }
                }
            }
        }
        .onTapGesture {
            squaresFilled += 1
            
            print(squaresFilled)
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())


#Preview {
    ContentView()
}
