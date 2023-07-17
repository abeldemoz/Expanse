//
//  SwiftMacrosPlugin.swift
//
//
//  Created by Abel Demoz on 16/07/2023.
//

import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

@main
struct SwiftMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        StringifyMacro.self,
    ]
}

