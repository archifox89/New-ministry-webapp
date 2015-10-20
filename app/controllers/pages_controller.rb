class PagesController < ApplicationController
  def main
     @announcements = Announcement.all.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end
  
  def projects
  end

  def project_docs
    @admin_circulars = AdminCircular.all.paginate(:page => params[:page], :per_page => 10).order('date_issued DESC')
    @admin_reports = AdminReport.all.paginate(:page => params[:page], :per_page => 3).order('date_issued DESC')
    @circulars = Circular.all.paginate(:page => params[:page], :per_page => 10).order('date_issued DESC')
    @exterior_reports = ExteriorReport.all.paginate(:page => params[:page], :per_page => 10).order('date_issued DESC')
    @interior_reports = InteriorReport.all.paginate(:page => params[:page], :per_page => 10).order('date_issued DESC')
    @messages = Message.all.paginate(:page => params[:page], :per_page => 10).order('date_issued DESC')
    @ministry_reports = MinistryReport.all.paginate(:page => params[:page], :per_page => 10).order('date_issued DESC')
    @reports = Report.all.paginate(:page => params[:page], :per_page => 10).order('date_issued DESC')
  end

  def search
  end

  def reports
  end

  def feedback
  end
end
