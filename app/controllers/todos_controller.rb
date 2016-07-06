class TodosController < ApplicationController
  def index
    @todos = Todo.new
    @todos = Todo.all
  end
end
