class HomeTeacher < ActiveRecord::Base
  has_many :members, through: :home_teachings
  has_many :home_teachings
  validates :name, presence: true
  validates_formatting_of :email, using: :email
  validates_formatting_of :phone_number, using: :us_phone
end
