class TasksController < ApplicationController

  def index
    @task = Task.order(:name)
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(params.require(:task).permit!)

    if @tasks.save
      redirect_to root_url, flash: {success: "You have successfully added a task"}
    else
      render :new
    end
  end

  # def edit
  #   @tasks = Task.find(params[:id])
  # end
  #
  # def update
  #   @tasks = Task.new(params.require(:task).permit!)
  #
  #   if @tasks.save
  #     redirect_to root_url, flash: {success: "You have successfully updated a task"}
  #   else
  #     render :index
  #   end
  # end

end