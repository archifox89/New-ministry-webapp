class AdminReportsController < ApplicationController
  before_action :set_admin_report, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @admin_reports = AdminReport.all
    respond_with(@admin_reports)
  end

  def show
    respond_with(@admin_report)
  end

  def new
    @admin_report = AdminReport.new
    respond_with(@admin_report)
  end

  def edit
  end

  def create
    @admin_report = AdminReport.new(admin_report_params)
    @admin_report.save
    if @admin_report.save
      redirect_to project_docs_path, notice: 'Successfully Added Report'
    else
      render action: 'new'
    end
  end

  def update
    @admin_report.update(admin_report_params)
    redirect_to project_docs_path, :notice => "Report Deleted"
  end

  def destroy
    @admin_report.destroy
    redirect_to project_docs_path, :notice => "Report Deleted"
  end

  private
    def set_admin_report
      @admin_report = AdminReport.find(params[:id])
    end

    def admin_report_params
      params.require(:admin_report).permit(:number, :subject, :date_issued, :report)
    end
end
