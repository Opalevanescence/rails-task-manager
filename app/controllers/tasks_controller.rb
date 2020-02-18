class TasksController < ApplicationController
  def index
    # Retreive all tasks
    @tasks = Task.all
  end

  def new
    # Create new task so you can use form_for in html
    @task = Task.new
  end

  def show
    # Show task with specific id
    @task = Task.find(params[:id])
  end

  def create
    params[:task][:completed] = params[:task][:completed] == 1
    task = Task.new(task_params)
    task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    params[:task][:completed] = params[:task][:completed] == 1
    task = Task.find(params[:id])
    task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
