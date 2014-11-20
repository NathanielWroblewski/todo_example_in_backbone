window.Todo or= {}

class Todo.Router extends Backbone.Router
  routes:
    '': 'index'
    'todos/:id': 'show'

  index: ->
    collection = new Todo.Collection
    collection.fetch().done =>
      view = new Todo.IndexView
        el: '#container'
        collection: collection
      view.render()
      @listenTo view, 'todo:clicked', (e) =>
        @navigate('todos/' + e.id, trigger: true)

  show: (id) ->
    model = new Todo.Model id: id
    model.fetch().done =>
      view = new Todo.ShowView
        el: '#container'
        model: model
      view.render()
