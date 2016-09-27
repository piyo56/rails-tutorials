class TasksController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(task_title)
    redirect_to "/projects/#{@project.id}"
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to "/projects/#{params[:project_id]}"
  end
  
  def toggle
    render nothing: true
    @task = Task.find(params[:id])
    @task.done = !@task.done
    @task.save
  end

  private

    def task_title
      params[:task].permit(:title)
    end
end
