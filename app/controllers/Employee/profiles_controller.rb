class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @profiles = Profile.all
    respond_with(@profiles)
  end

  def show
    respond_with(@profile)
  end

  def new
    @profile = Profile.new
    @profile.experiences.build
    respond_with(@profile)
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    @profile.save
    respond_with(@profile)
  end

  def update
    @profile.update(profile_params)
    respond_with(@profile)
  end

  def destroy
    @profile.destroy
    respond_with(@profile)
  end

  private
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:id, :name, :civil, :date_of_employment, :mobile, :work_email, :personal_email, :internal_no, :nationality, :gender2, :academic_degree, :major, :work_experience, :folder, experiences_attributes: [:id, :company, :period_of_employment, :title, :end_date, :uploads, :contact_no, :website, :_destroy])
    end
end



