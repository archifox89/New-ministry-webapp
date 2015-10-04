class CircularsController < ApplicationController
  before_action :set_circular, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  respond_to :html

  def index
    @circulars = Circular.all
    respond_with(@circulars)
  end

  def show
    respond_with(@circular)
  end

  def new
    @circular = Circular.new
    respond_with(@circular)
  end

  def edit
  end

  def create
    @circular = Circular.new(circular_params)
    @circular.user = current_user
    if @circular.save
      redirect_to project_docs_path, notice: 'Successfully Added Report'
    else
      render action: 'new'
    end
  end

  def update
    @circular.update(circular_params)
    redirect_to project_docs_path, :notice => "Report Updated"
  end

  def destroy
    @circular.destroy
    redirect_to project_docs_path, :notice => "Report Deleted"
  end

  private
    def set_circular
      @circular = Circular.find(params[:id])
    end

    def circular_params
      params.require(:circular).permit(:number, :subject, :date_issued, :report)
    end
end
