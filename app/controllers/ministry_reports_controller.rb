class MinistryReportsController < ApplicationController
  before_action :set_ministry_report, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  respond_to :html

  def index
    @ministry_reports = MinistryReport.all
    respond_with(@ministry_reports)
  end

  def show
    respond_with(@ministry_report)
  end

  def new
    @ministry_report = MinistryReport.new
    respond_with(@ministry_report)
  end

  def edit
  end

  def create
    @ministry_report = MinistryReport.new(ministry_report_params)
    @ministry_report.user = current_user
    if @ministry_report.save
      redirect_to project_docs_path, notice: 'Successfully Added Report'
    else
      render action: 'new'
    end
  end

  def update
    @ministry_report.update(ministry_report_params)
    redirect_to project_docs_path, :notice => "Report Updated"
  end

  def destroy
    @ministry_report.destroy
    redirect_to project_docs_path, :notice => "Report Deleted"
  end

  private
    def set_ministry_report
      @ministry_report = MinistryReport.find(params[:id])
    end

    def ministry_report_params
      params.require(:ministry_report).permit(:number, :subject, :date_issued, :report)
    end
end
