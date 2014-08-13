class TasksController < ApplicationController

  def index
    @task = Task.order(:name)
  end

  def new
    @task_list = TaskList.find(params[:task_list_id])
    @task = Task.new
  end

  def create
    p params
    @tasks = Task.new(
      task: params[:task][:task],
      time: Task.format_date(params[:date]),
      task_list_id: params[:task_list_id]
    )

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