class TodosController < ApplicationController

  def index
    todos = Todo.all
    render json: { collection: todos }
  end
end
