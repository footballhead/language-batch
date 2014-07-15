LanguageBatchView = require './language-batch-view'

module.exports =
  languageBatchView: null

  activate: (state) ->
    @languageBatchView = new LanguageBatchView(state.languageBatchViewState)

  deactivate: ->
    @languageBatchView.destroy()

  serialize: ->
    languageBatchViewState: @languageBatchView.serialize()
