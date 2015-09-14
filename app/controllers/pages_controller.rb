class PagesController < ApplicationController
  def main
  end
  
  def projects
  end

  def project_docs
    @admin_circulars = AdminCircular.all
    @admin_reports = AdminReport.all
    @circulars = Circular.all
    @exterior_reports = ExteriorReport.all
    @interior_reports = InteriorReport.all
    @messages = Message.all
    @ministry_reports = MinistryReport.all
    @reports = Report.all
  end

  def search
  end

  def reports
  end

  def feedback
  end
end
