window.Todo or= {}

class Todo.IndexView extends Backbone.View
  template: JST['templates/index']

  initialize: ->
    @listenTo(@collection, 'change', @render)

  events:
    'click span': 'triggerClick'
    'change input[type=checkbox]': 'completeTodo'
    'submit form': 'createTodo'

  triggerClick: (e) ->
    id = $(e.currentTarget).parent('li').data 'id'
    @trigger 'todo:clicked',
      id: id

  completeTodo: (e) ->
    id = $(e.currentTarget).parent('li').data 'id'
    model = @collection.findWhere(id: id)
    model.save(completed_at: new Date)

  createTodo: (e) ->
    e.preventDefault()
    model = new Todo.Model
      title:       @$('input[name="title"]').val()
      description: @$('input[name="description"]').val()
      urgency:     @$('select option:selected').val()
    model.save().done =>
      @collection.add(model).trigger 'change'


  render: ->
    @$el.html @template(todoList: @collection.models)
    @
