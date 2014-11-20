window.Todo or= {}

class Todo.IndexView extends Backbone.View

  template: JST['templates/index']

  render: ->
    @$el.html @template()
    @
