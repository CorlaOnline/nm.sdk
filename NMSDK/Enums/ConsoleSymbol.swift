//
//  ConsoleSymbol.swift
//  NMSDK
//
//  Created by Francesco Colleoni on 19/04/16.
//  Copyright © 2016 Near srl. All rights reserved.
//

import Foundation

enum ConsoleSymbol {
    case Space
    case AlternateSpace
    case Add
    case To
    case Download
    case Square
    case Error
    case Warning
    
    var char: String {
        switch self {
        case .Space:
            return "🔹"
        case .AlternateSpace:
            return "🔸"
        case .Add:
            return "➕"
        case .To:
            return "➡️"
        case .Download:
            return "⬇️"
        case .Square:
            return "◻️"
        case .Error:
            return "❗️"
        case .Warning:
            return "❕"
        }
    }
}
