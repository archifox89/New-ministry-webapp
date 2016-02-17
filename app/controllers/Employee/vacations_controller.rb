class VacationsController < ApplicationController
  before_action :set_vacation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vacations = Vacation.all
    respond_with(@vacations)
  end

  def show
    respond_with(@vacation)
  end

  def new
    @vacation = Vacation.new
    respond_with(@vacation)
  end

  def edit
  end

  def create
    @vacation = Vacation.new(vacation_params)
    @vacation.user_id = current_user.id
    @vacation.save
    respond_with(@vacation)
  end

  def update
    @vacation.update(vacation_params)
    respond_with(@vacation)
  end

  def destroy
    @vacation.destroy
    respond_with(@vacation)
  end

  private
    def set_vacation
      @vacation = Vacation.find(params[:id])
    end

    def vacation_params
      params.require(:vacation).permit(:type, :start_date, :end_date)
    end
end
