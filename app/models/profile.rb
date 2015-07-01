class Profile < ActiveRecord::Base

	belongs_to :users
	has_many :experiences, :dependent => :destroy

	accepts_nested_attributes_for :experiences, allow_destroy: true

	validates :name, presence: true


end

