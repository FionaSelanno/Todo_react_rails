class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  # def create
  #   respond_to do |format|
  #     if @todo.save
  #       format.html { redirect_to todos_path, notice: 'Todo was successfully created.' }
  #       # format.json { render :show, status: :created, location:
  #     else
  #       format.html { render :new }
  #       # format.json { render json: @todo.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

def create
  todo_params=
    params.require(:todo).permit(:title, :completed)

    @todo=Todo.new(todo_params)

    if @todo.save
      redirect_to todos_path, notice: 'Todo-item was successfully created.'
    else
      render 'new'

    end
  end

  def Show
    @todo=todo.find(params[:id])
  end

end
