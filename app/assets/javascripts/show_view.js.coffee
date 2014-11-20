window.Todo or= {}

class Todo.ShowView extends Backbone.View

  template: JST['templates/show']

  render: ->
    @$el.html @template()
