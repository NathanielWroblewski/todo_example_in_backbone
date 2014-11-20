window.Todo or= {}

class Todo.IndexView extends Backbone.View

  template: JST['templates/index']

  events:
    'click li': 'triggerClick'

  triggerClick: (e) ->
    id = $(e.currentTarget).data 'id'
    @trigger 'todo:clicked',
      id: id

  render: ->
    @$el.html @template(todoList: @collection.models)
    @

