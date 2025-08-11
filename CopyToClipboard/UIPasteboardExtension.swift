//
//  UIPasteboardExtension.swift
//  CopyToClipboard
//
//  Created by Lubo Klucka on 11/08/2025.
//

import UIKit

extension UIPasteboard {
    
    static func printClipboard() {
        guard let copiedText = UIPasteboard.general.string else {
            return
        }
        print("Clipboard is: '\(copiedText)")
    }
    
}
