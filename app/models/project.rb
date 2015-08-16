class Project < ActiveRecord::Base

  has_many :pictures,  :dependent => :destroy
  has_many :teams, :dependent => :destroy


	accepts_nested_attributes_for :pictures, :reject_if => lambda { |a| a[:image].blank? }, allow_destroy: true
	accepts_nested_attributes_for :teams, :reject_if => lambda { |a| a[:member].blank? }, allow_destroy: true

end
