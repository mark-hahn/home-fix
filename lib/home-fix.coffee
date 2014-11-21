###
  lib/home-fix.coffee
###
module.exports =
  activate: ->
    atom.commands.add '.workspace .editor', 'home-fix:move-to-first-character-of-line', ->
      if (editor = atom.workspace.getActiveTextEditor())
        {column, row} = editor.getCursorBufferPosition()
        indentText = /^\s*/.exec(editor.lineTextForBufferRow row)[0]
        if 0 < column < indentText.length
             editor.moveToBeginningOfLine()
        else editor.moveToFirstCharacterOfLine()
        