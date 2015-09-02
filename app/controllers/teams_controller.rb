class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  before_action :set_project
  respond_to :html

  def index
    @teams = Team.all
    respond_with(@teams)
  end

  def show
    respond_with(@team)
  end

  def new
    @project = Project.find(params[:project_id])
    @team = @project.teams.new
    respond_with(@team)
  end



  def edit
    
  end

  def create
    @project = Project.find(params[:project_id])
    @team = @project.teams.new(team_params)
    @team.user = current_user
   if @team.save
      redirect_to @project, notice: 'Successfully Joined Project'
    else
      render action: 'new'
    end
  end



  def update
    @team.update(team_params)
    respond_with(@team)
  end

  def destroy
    @team.destroy
    respond_with(@team)
  end

  private
    def set_team
      @team = Team.find(params[:id])
    end

    def set_project 
      @project = Project.find(params[:project_id])
    end 

    def team_params
      params.require(:team).permit(:id, :user_id, :member, :role, :project_id, )
    end
end
