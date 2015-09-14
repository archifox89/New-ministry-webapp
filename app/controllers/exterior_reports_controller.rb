class ExteriorReportsController < ApplicationController
  before_action :set_exterior_report, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @exterior_reports = ExteriorReport.all
    respond_with(@exterior_reports)
  end

  def show
    respond_with(@exterior_report)
  end

  def new
    @exterior_report = ExteriorReport.new
    respond_with(@exterior_report)
  end

  def edit
  end

  def create
    @exterior_report = ExteriorReport.new(exterior_report_params)
    if @exterior_report.save
      redirect_to project_docs_path, notice: 'Successfully Added Report'
    else
      render action: 'new'
    end
  end

  def update
    @exterior_report.update(exterior_report_params)
    redirect_to exterior_reports_path, :notice => "Report Deleted"
  end

  def destroy
    @exterior_report.destroy
    redirect_to exterior_reports_path, :notice => "Report Deleted"
  end

  private
    def set_exterior_report
      @exterior_report = ExteriorReport.find(params[:id])
    end

    def exterior_report_params
      params.require(:exterior_report).permit(:number, :subject, :date_issued, :report)
    end
end
