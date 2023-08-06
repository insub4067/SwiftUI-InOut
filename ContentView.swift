//
//  ContentView.swift
//  TEST
//
//  Created by 김인섭 on 2023/07/17.
//

import SwiftUI

struct ContentView: View {
    
    typealias Input = ContentViewInput
    typealias Output = ContentViewOutput
    
    let input: Input
    @StateObject var output: Output
    
    var body: some View {
        Button {
            input.didTapButton()
        } label: {
            Text("\(output.count)")
        }
    }
}

extension ContentView {
    
    static func build() -> ContentView {
        let output = ContentViewOutput()
        let input = ContentViewInput(output: output)
        return ContentView(input: input, output: output)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView.build()
    }
}
