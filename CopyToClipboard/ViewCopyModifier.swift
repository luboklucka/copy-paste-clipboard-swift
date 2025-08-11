//
//  ViewCopyModifier.swift
//  CopyToClipboard
//
//  Created by Lubo Klucka on 11/08/2025.
//

import SwiftUI

public extension View {
    
    func copyToClipboard(value: String) -> some View {
        return contextMenu {
            Button("Copy \(value)") {
                UIPasteboard.general.string = value
                UIPasteboard.printClipboard()
            }
        }
    }
        
}
