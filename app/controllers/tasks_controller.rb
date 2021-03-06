class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, except: :index

  def index
    @tasks = current_user.tasks
    @first_quadrant_tasks = Task.where(user_id: current_user.id).where(quadrant: 0)
    @second_quadrant_tasks = Task.where(user_id: current_user.id).where(quadrant: 1)
    @third_quadrant_tasks = Task.where(user_id: current_user.id).where(quadrant: 2)
    @fourth_quadrant_tasks = Task.where(user_id: current_user.id).where(quadrant: 3)
  end

  def new
    respond_to do |format|
      format.html{}
      format.js{}
    end
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = "タスクが保存されました"
      redirect_to root_url
    else
      flash[:alert] = "タスクの保存に失敗しました"
      redirect_to root_url
    end
  end

  def destroy
    if current_user
      @task = current_user.tasks.find_by(id: params[:id])
      @task.destroy
      flash[:success] = "タスクを完了しました！"
      redirect_to root_url
    else
      flash[:error] = "タスクを完了できませんでした..."
    end
  end

  private

  def task_params
    params.require(:task).permit(
      :user_id,
      :title,
      :deadline,
      :quadrant
    )
  end

  def set_task
    @task =current_user.tasks.build(user_id: current_user.id)
  end
end
