class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @projects = Project.all.order("created_at ASC")
    respond_with(@projects)
  end

  def show
    respond_with(@project)
  end

  def new
    @project = Project.new
    @project.pictures.build
    @project.teams.build
  end



  def edit
  end

  def create

    @project = Project.new(project_params)
    if @project.save
    flash[:notice] = "Successfully created project."
    redirect_to @project
    else
    render :action => 'new'
    end

  end

  def update
    @project.update(project_params)
    respond_with(@project)
  end

  def destroy
    @project.destroy
    respond_with(@project)
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end


    def project_params
      params.require(:project).permit(:id, :title, :description, :status, :phase, :location, :contractor, :designer, :client, :area, :budget, :project_start, :construction_period, :expected_date, :picture_id, pictures_attributes: [:id, :image, :_destroy], teams_attributes: [:project_id, :user_id, :id, :member, :role, :_destroy], months_attributes: [:month_range, :phase, :id, :_destroy])
    end
end




