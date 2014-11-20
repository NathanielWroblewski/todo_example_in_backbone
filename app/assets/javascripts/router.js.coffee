window.Todo or= {}

class Todo.Router extends Backbone.Router
  routes:
    '': 'index'

  index: ->
