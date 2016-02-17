class AdminCircularsController < ApplicationController
  before_action :set_admin_circular, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  respond_to :html

  def index
    @admin_circulars = AdminCircular.all.paginate(:page => params[:page], :per_page => 10)
    respond_with(@admin_circulars)
  end

  def show
    respond_with(@admin_circular)
  end

  def new
    @admin_circular = AdminCircular.new
    respond_with(@admin_circular)
  end

  def edit
  end

  def create
    @admin_circular = AdminCircular.new(admin_circular_params)
    @admin_circular.user = current_user
     if @admin_circular.save
      redirect_to project_docs_path, notice: 'Successfully Added Report'
    else
      render action: 'new'
    end
  end

  def update
    @admin_circular.update(admin_circular_params)
    redirect_to project_docs_path, :notice => "Report Updated"
  end

  def destroy
    @admin_circular.destroy
    redirect_to project_docs_path, :notice => "Report Deleted"
  end

  private
    def set_admin_circular
      @admin_circular = AdminCircular.find(params[:id])
    end

    def admin_circular_params
      params.require(:admin_circular).permit(:number, :subject, :date_issued, :report)
    end
end
