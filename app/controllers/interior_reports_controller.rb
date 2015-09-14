class InteriorReportsController < ApplicationController
  before_action :set_interior_report, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @interior_reports = InteriorReport.all
    respond_with(@interior_reports)
  end

  def show
    respond_with(@interior_report)
  end

  def new
    @interior_report = InteriorReport.new
    respond_with(@interior_report)
  end

  def edit
  end

  def create
    @interior_report = InteriorReport.new(interior_report_params)
    if @interior_report.save
      redirect_to project_docs_path, notice: 'Successfully Added Report'
    else
      render action: 'new'
    end
  end

  def update
    @interior_report.update(interior_report_params)
    redirect_to project_docs_path, :notice => "Report Deleted"
  end

  def destroy
    @interior_report.destroy
    redirect_to project_docs_path, :notice => "Report Deleted"
  end

  private
    def set_interior_report
      @interior_report = InteriorReport.find(params[:id])
    end

    def interior_report_params
      params.require(:interior_report).permit(:number, :subject, :date_issued, :report)
    end
end
