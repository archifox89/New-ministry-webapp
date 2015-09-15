class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @reports = Report.all
    respond_with(@reports)
  end

  def show
    respond_with(@report)
  end

  def new
    @report = Report.new
    respond_with(@report)
  end

  def edit
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to project_docs_path, notice: 'Successfully Added Report'
    else
      render action: 'new'
    end
  end

  def update
    @report.update(report_params)
    redirect_to project_docs_path, :notice => "Report Updated"
  end

  def destroy
    @report.destroy
    redirect_to project_docs_path, :notice => "Report Updated"
  end

  private
    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:number, :subject, :date_issued, :file)
    end
end
