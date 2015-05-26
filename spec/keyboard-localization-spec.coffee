path = require('path')
fs = require('fs')
KeyboardLocalization = require '../lib/keyboard-localization.coffee'

describe 'KeyboardLocalization', ->
  pkg = []

  beforeEach ->
    pkg = new KeyboardLocalization()
    console.log('beforeEach')

  describe 'when the package loads', ->
    it 'should be an keymap-locale-file available for every config entry', ->
      pkg.config.useKeyboardLayout.enum.forEach (localeString) ->
        pathToKeymapFile = path.join(__dirname, '..', 'lib', 'keymaps', localeString + '.json')
        console.log pathToKeymapFile
        expect(fs.existsSync(pathToKeymapFile)).toBe true
