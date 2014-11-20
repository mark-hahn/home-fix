HomeFixView = require './home-fix-view'

module.exports =
  homeFixView: null

  activate: (state) ->
    @homeFixView = new HomeFixView(state.homeFixViewState)

  deactivate: ->
    @homeFixView.destroy()

  serialize: ->
    homeFixViewState: @homeFixView.serialize()
