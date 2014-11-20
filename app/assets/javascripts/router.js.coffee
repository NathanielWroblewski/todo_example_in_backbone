window.Todo or= {}

class Todo.Router extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    collection = new Todo.Collection
    collection.fetch =>
      view = new Todo.IndexView
        el: '#container'
        collection: collection
      view.render()
