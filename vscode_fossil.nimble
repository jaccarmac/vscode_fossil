# Package

version = "0.1.0"
author = "Jacob MacDonald"
description = "Fossil integration for VS Code."
license = "Unlicense"
srcDir = "src"

# Dependencies

requires "nim >= 0.17.2"

# Tasks

task build_dev, "Build the extension in debug mode.":
    --d: "nodejs"
    --o: "extension.js"
    setCommand "js", "src/vscode_fossil.nim"
task build_release, "Build the extension in release mode.": # TODO: Closure compiler.
    --d: "release"
    --o: "extension.js"
    setCommand "js", "src/vscode_fossil.nim"
