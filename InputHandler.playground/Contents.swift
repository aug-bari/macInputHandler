//: Playground - noun: a place where people can play
//: Simulate Command + Space => 

import Cocoa

let src = CGEventSource(stateID: CGEventSourceStateID.hidSystemState)

let command_down = CGEvent(keyboardEventSource: src, virtualKey: 0x38, keyDown: true)
let command_up = CGEvent(keyboardEventSource: src, virtualKey: 0x38, keyDown: false)
let space_down = CGEvent(keyboardEventSource: src, virtualKey: 0x31, keyDown: true)
let space_up = CGEvent(keyboardEventSource: src, virtualKey: 0x31, keyDown: false)

space_down?.flags = CGEventFlags.maskCommand

let loc = CGEventTapLocation.cghidEventTap

command_down?.post(tap: loc)
space_down?.post(tap: loc)
space_up?.post(tap: loc)
command_up?.post(tap: loc)
