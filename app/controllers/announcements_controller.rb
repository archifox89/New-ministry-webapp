class AnnouncementsController < ApplicationController
  before_action :set_announcement, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @announcements = Announcement.all
    respond_with(@announcements)
  end

  def show
    respond_with(@announcement)
  end

  def new
    @announcement = Announcement.new
    respond_with(@announcement)
  end

  def edit
  end

  def create
    @announcement = Announcement.new(announcement_params)
    @announcement.user = current_user
    if @announcement.save
    flash[:notice] = "Successfully created announcement."
    redirect_to main_path
    else
    render :action => 'new'
    end
  end

  def update
    @announcement.update(announcement_params)
    respond_with(@announcement)
  end

  def destroy
    @announcement.destroy
    respond_with(@announcement)
  end

  private
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end

    def announcement_params
      params.require(:announcement).permit(:title, :description, :user_id)
    end
end
