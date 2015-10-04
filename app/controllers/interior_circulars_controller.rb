class InteriorCircularsController < ApplicationController
  before_action :set_interior_circular, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  respond_to :html

  def index
    @interior_circulars = InteriorCircular.all
    respond_with(@interior_circulars)
  end

  def show
    respond_with(@interior_circular)
  end

  def new
    @interior_circular = InteriorCircular.new
    respond_with(@interior_circular)
  end

  def edit
  end

  def create
    @interior_circular = InteriorCircular.new(interior_circular_params)
    @interior_circular.user = current_user
    if @interior_circular.save
      redirect_to project_docs_path, notice: 'Successfully Added Report'
    else
      render action: 'new'
    end
  end

  def update
    @interior_circular.update(interior_circular_params)
    redirect_to project_docs_path, :notice => "Report Updated"
  end

  def destroy
    @interior_circular.destroy
    redirect_to project_docs_path, :notice => "Report Deleted"
  end

  private
    def set_interior_circular
      @interior_circular = InteriorCircular.find(params[:id])
    end

    def interior_circular_params
      params.require(:interior_circular).permit(:number, :subject, :date_issued, :report)
    end
end
