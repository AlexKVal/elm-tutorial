'use strict'

require('ace-css/css/ace.css')
require('font-awesome/css/font-awesome.css')

require('./index.html') // so it gets copied to dist

var Elm = require('./Main.elm')
var mountNode = document.getElementById('main')
Elm.Main.embed(mountNode)
