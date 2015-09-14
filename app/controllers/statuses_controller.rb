class StatusesController < ApplicationController
  before_action :set_status, only: [:show, :edit, :update, :destroy]
  before_action :set_project
  respond_to :html

  def index
    @statuses = Status.all
    respond_with(@statuses)
  end

  def show
    respond_with(@status)
  end

  def new
    @status = Status.new
    respond_with(@status)
  end

  def edit
  end

  def create
    @project = Project.find(params[:project_id])
    @status = @project.statuses.new(status_params)
    @status.user = current_user
    if @status.save
      redirect_to @project, notice: 'Successfully Added Status Update'
    else
      render action: 'new'
    end

  end

  def update
    @status.update(status_params)
    respond_with(@status)
  end

  def destroy
    @status.destroy
    redirect_to @project, :notice => "Status Deleted"
  end

  private
    def set_status
      @status = Status.find(params[:id])
    end

    def set_project 
      @project = Project.find(params[:project_id])
    end 

    def status_params
      params.require(:status).permit(:status_update, :status_title, :user_id)
    end
end
