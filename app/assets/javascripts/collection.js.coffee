window.Todo or = {}

class Todo.Collection extends Backbone.Collection
  url: '/todos'
  model: Todo.Model
