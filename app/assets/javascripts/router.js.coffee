window.Todo or= {}

class Todo.Router extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    view = new Todo.IndexView
      el: '#container'
    view.render()
