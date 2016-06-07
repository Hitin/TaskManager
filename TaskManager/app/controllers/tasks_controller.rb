class TasksController < ApplicationController
  def index
  	@tasks = Task.all
  end

  def show
	@tasks = Task.find(params[:id])	
  end

  def new
  	@tasks = Task.new
  end

  def edit
  	@tasks = Task.find(params[:id])
  end

  def create
  	@tasks = Task.new(tasks_params)

  	if @tasks.save
      redirect_to @tasks
    else
      render 'new'
    end
  end

  def update
  	@tasks = Task.find(params[:id])

  	if @tasks.update(tasks_params)
  		redirect_to @tasks
  	else
  		render 'edit'
  	end

  end

  def destroy
  	@tasks = Task.find(params[:id])
  	@tasks.destroy
  	
  	redirect_to tasks_path
  end  
end

private
  def tasks_params
  	params.require(:tasks).permit(:user, :email)
  end