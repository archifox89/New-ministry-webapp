class MonthsController < ApplicationController
  before_action :set_month, only: [:show, :edit, :update, :destroy]
  before_action :set_project
  respond_to :html

  def index
    @months = Month.all
    respond_with(@month)
  end

  def show
    respond_with(@month)
  end

  def new
    @month = Month.new
    respond_with(@month)
  end

  def edit
  end

  def create
    @project = Project.find(params[:project_id])
    @month = @project.months.build(month_params)
    if @month.save
      redirect_to @project, notice: 'Successfully Added Monthly Report'
    else
      render action: 'new'
    end
  end

  def update
    @month.update(month_params)
    redirect_to @project, :notice => "Report Updated"
  end

  def destroy
    @month.destroy
    redirect_to @project, :notice => "Report Deleted"
  end

  private
    def set_month
      @month = Month.find(params[:id])
    end

    def set_project 
      @project = Project.find(params[:project_id])
    end 

    def month_params
      params.require(:month).permit(:month_range, :phase, :project_id, :report)
    end
end
