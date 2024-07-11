class TasksController < ApplicationController
  
  def index; end

  def show; end

  def new
    @task= Task.new
    @categories = Category.all
  end

  def create;
  end

  def destroy; end

  private

  def task_params
    params.require(:task).permit(:name, :contents, :open, :category_id, task_schedule_attributes: [:start_at, :end_at])
  end
end
