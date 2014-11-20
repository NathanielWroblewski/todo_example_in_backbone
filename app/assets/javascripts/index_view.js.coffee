window.Todo or= {}

class Todo.IndexView extends Backbone.View
  template: JST['templates/index']

  initialize: ->
    @listenTo(@collection, 'change', @render)

  events:
    'click span': 'triggerClick'
    'change input[type=checkbox]': 'completeTodo'

  triggerClick: (e) ->
    id = $(e.currentTarget).parent('li').data 'id'
    @trigger 'todo:clicked',
      id: id

  completeTodo: (e) ->
    id = $(e.currentTarget).parent('li').data 'id'
    model = @collection.findWhere(id: id)
    model.save(completed_at: new Date)

  render: ->
    @$el.html @template(todoList: @collection.models)
    @

