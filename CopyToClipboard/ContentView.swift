//
//  ContentView.swift
//  CopyToClipboard
//
//  Created by Lubo Klucka on 11/08/2025.
//

import SwiftUI

struct ContentView: View {
    let text1 = "Text 1 was copied."
    let text2 = "Text 2 was copied!"
    
    var body: some View {
        VStack {
            Text(
                text1
            )
            .onTapGesture {
                UIPasteboard.general.string = text1
                UIPasteboard.printClipboard()
            }
            
            Text(
                text2
            )
            .onTapGesture {
                UIPasteboard.general.string = text2
                UIPasteboard.printClipboard()
            }
        }
        .padding()
        .copyToClipboard(
            value: text1 + " + " + text2
        )
    }
}

#Preview {
    ContentView()
}
