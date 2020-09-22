class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params["id"])
  end

  def new
    @task = Task.new
  end

  def update
    @task = Task.find(params["id"])
  end

  def update_value
    Task.update(task_params)
    @task = Task.find(params["id"])
    @task.save
    redirect_to task_path(@task)
  end

  def create
    @task = Task.create(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params["id"])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
     params.require(:task).permit(:title, :details, :completed, :id)
  end
end
