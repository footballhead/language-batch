{View} = require 'atom'

module.exports =
class LanguageBatchView extends View
  @content: ->
    @div class: 'language-batch overlay from-top', =>
      @div "The LanguageBatch package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "language-batch:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "LanguageBatchView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
