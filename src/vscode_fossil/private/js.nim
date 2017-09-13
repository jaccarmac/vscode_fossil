## Basic imports from the global Javascript namespace.

{.experimental.}

type
    Module = ref object
    Exports = ref object

proc require*(module: cstring): Module {.importc.} ## \
## Node-style require for Nim.
##
## This proc uses a hidden return type. Always cast to a custom module type you
## have created, like so:
##
## .. code-block:: nim
##   cast[React](require "react")

proc `.=`*(e: Exports, f: cstring, v: any) {.importcpp: "#[#] = #".} ## \
## Allow setting exports properties.

var exports* {.importc.}: Exports