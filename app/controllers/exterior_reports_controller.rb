class ExteriorReportsController < ApplicationController
  before_action :set_exterior_report, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]


  respond_to :html

  def index
    @exterior_reports = ExteriorReport.all.paginate(:page => params[:page], :per_page => 10)
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
    @exterior_report.user = current_user
    if @exterior_report.save
      redirect_to exterior_reports_path, notice: 'Successfully Added Report'
    else
      render action: 'new'
    end
  end

  def update
    @exterior_report.update(exterior_report_params)
    redirect_to exterior_reports_path, :notice => "Report Updated"
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
