class Profile < ActiveRecord::Base

	belongs_to :users
	has_many :experiences, :dependent => :destroy

	accepts_nested_attributes_for :experiences, :reject_if => lambda { |a| a[:title].blank? }, allow_destroy: true

	validates_associated :experiences

	validates :name, :civil, :date_of_employment, :mobile, :work_email, :personal_email, :internal_no, :academic_degree, :major, presence: true
	validates :civil, length: { is: 12 }
	validates :mobile, length: { is: 8 }
	validates :folder, length: { is: 5 }


end

