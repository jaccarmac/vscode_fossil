## Nim versions of the vscode Javascript module.
##
## Importing this package executes an automatic require of the vscode module.
## What would be the contents of the result of that require call can be
## accessed with no prefix (i.e. commands).

import js

type 
    VsCode = ref object
        window: Window
        commands: Commands
    WindowObj = object
    Window* = ref WindowObj
    CommandsObj = object
    Commands* = ref CommandsObj
    DisposableObj = object
    Disposable* = ref DisposableObj
    ExtensionContextObj = object
        subscriptions*: Subscriptions
    ExtensionContext* = ref ExtensionContextObj
    SubscriptionsObj = object
    Subscriptions* = ref SubscriptionsObj

proc showInformationMessage*(w: Window, m: cstring) {.importcpp.} ## vscode.window.showInformationMessage

proc registerCommand*(c: Commands, n: cstring, cb: proc): Disposable {.importcpp.} ## vscode.commands.registerCommand

proc push*(s: Subscriptions, d: Disposable) {.importcpp.} ## vscode::ExtensionContext.subscriptions.push

let vscode = cast[VsCode](require "vscode")
let commands* = vscode.commands ## vscode.commands
let window* = vscode.window ## vscode.window