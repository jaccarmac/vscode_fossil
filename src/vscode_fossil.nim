import jsconsole
import vscode_fossil.private.js
import vscode_fossil.private.vscode

proc activate(ctx: ExtensionContext) =
    console.log "Congratulations, your extension \"vscode-fossil\" is now active!"
    proc sayHello() =
        window.showInformationMessage "Hello World!";
    ctx.subscriptions.push commands.registerCommand("extension.sayHello", sayHello)

exports.activate = activate