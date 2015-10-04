class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile, :dependent => :destroy
  has_and_belongs_to_many :teams, :dependent => :destroy
  has_many :statuses, :dependent => :destroy
  has_many :exterior_reports
  has_many :admin_circulars
  has_many :admin_reports
  has_many :circulars
  has_many :interior_circulars
  has_many :interior_reports
  has_many :messages
  has_many :ministry_reports
  has_many :months
  has_many :reports

end


