class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    todo_params=
      params.require(:todo).permit(:title, :completed)

      @todo=Todo.new(todo_params)

      respond_to do |format|
      if @todo.save
        format.html {redirect_to todos_path, notice: 'Todo-item was successfully created.'}
        format.json { render :show, status: :created, location: @todo }
      else
        format.html { render :index}
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    todo_params=
      params.require(:todo).permit(:title, :completed)

   respond_to do |format|
     if @todo.update(todo_params)
       format.html { redirect_to @todo, notice: 'Todo was successfully updated.' }
       format.json { render :show, status: :ok, location: @todo }
     else
       format.html { render :index }
       format.json { render json: @todo.errors, status: :unprocessable_entity }
     end
   end
 end

  def Show
    @todo=todo.find(params[:id])
  end

  def destroy
    @todo=Todo.find(params[:id])
    @todo.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Todo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
