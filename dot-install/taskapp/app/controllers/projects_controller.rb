class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end
  
  def show
    @project = Project.find(params[:id])
    # @tasks = Project[project.id].tasks
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      saveredirect_to "/projects"
    else
      render "/projects/new"
    end
  end

  private

    def project_params
      params[:project].permit(:title)
    end
end
